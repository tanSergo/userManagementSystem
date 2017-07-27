package springsecurityapp.usermanagement.dao;

import springsecurityapp.usermanagement.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleDao extends JpaRepository<Role, Long> {
}
