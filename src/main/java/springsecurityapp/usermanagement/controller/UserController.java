package springsecurityapp.usermanagement.controller;

import org.springframework.web.bind.annotation.ResponseBody;
import springsecurityapp.usermanagement.model.Address;
import springsecurityapp.usermanagement.model.SearchCriteria;
import springsecurityapp.usermanagement.model.User;
import springsecurityapp.usermanagement.service.SecurityService;
import springsecurityapp.usermanagement.service.UserService;
import springsecurityapp.usermanagement.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        model.addAttribute("addressForm", new Address());

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm,
                               BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        Date currentDate = new Date();
        userForm.setCreatedTimestamp(currentDate.toString());
        userForm.setLastUpdatedTimestamp(currentDate.toString());
        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getConfirmPassword());

        return "redirect:/welcome";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null) {
            model.addAttribute("error", "Username or password is incorrect.");
        }

        if (logout != null) {
            model.addAttribute("message", "Logged out successfully.");
        }

        return "login";
    }

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model) {
        return "welcome";
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(Model model) {
        return "admin";
    }



    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String searching(Model model) {
        model.addAttribute("searchForm", new SearchCriteria());
        return "search";
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public @ResponseBody
    List searching(@ModelAttribute("searchForm") SearchCriteria searchCriteria,
                   BindingResult bindingResult, Model model) {


        if (searchCriteria.getUsername().length() > 0) {
            return userService.findByPartOfUsername(searchCriteria.getUsername());
        }
        if (searchCriteria.getEmail().length() > 0) {
            return userService.findByEmail(searchCriteria.getEmail());
        }
        if (searchCriteria.getBirthday().length() > 0) {
            return userService.findByBirthday(searchCriteria.getBirthday());
        }
        List<String> failed = new ArrayList<>();
        failed.add("No criteria found");
        return failed;
    }
}
