package springsecurityapp.usermanagement.service;

import springsecurityapp.usermanagement.dao.AddressDao;
import springsecurityapp.usermanagement.dao.RoleDao;
import springsecurityapp.usermanagement.dao.UserDao;
import springsecurityapp.usermanagement.model.Role;
import springsecurityapp.usermanagement.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private RoleDao roleDao;
//
    @Autowired
    private AddressDao addressDao;
//
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        Set<Role> roles = new HashSet<>();
        roles.add(roleDao.getOne(1L));
        user.setRoles(roles);
        userDao.save(user);
    }

    @Override
    public User findByUsername(String username) {
        return userDao.findByUsername(username);
    }

    @Override
    public List<User> findByPartOfUsername(String partOfName) {// throws CloneNotSupportedException {
        return userDao.findByUsernameContains(partOfName);
    }

    @Override
    public List<User> findByEmail(String email) {
        return userDao.findByEmail(email);
    }

    @Override
    public List<User> findByBirthday(String birthday) {
        return userDao.findByBirthday(birthday);
    }

}
