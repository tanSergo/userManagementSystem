package springsecurityapp.usermanagement.service;

import springsecurityapp.usermanagement.model.Address;
import springsecurityapp.usermanagement.model.User;

import java.util.List;


public interface UserService {

    void save(User user);

    User findByUsername(String username);

    List<User> findByPartOfUsername(String partOfName);

    List<User> findByEmail(String email);

    List<User> findByBirthday(String birthday);
}
