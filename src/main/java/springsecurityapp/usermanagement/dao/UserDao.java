package springsecurityapp.usermanagement.dao;

import org.springframework.data.jpa.repository.Query;
import springsecurityapp.usermanagement.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserDao extends JpaRepository<User, Long> {
    User findByUsername(String username);


    List<User> findByUsernameContains(String partOfUsername);

    List<User> findByEmail(String email);

    List<User> findByBirthday(String birthday);
}
