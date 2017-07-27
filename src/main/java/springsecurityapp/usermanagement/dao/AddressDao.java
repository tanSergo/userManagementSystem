package springsecurityapp.usermanagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import springsecurityapp.usermanagement.model.Address;


public interface AddressDao extends JpaRepository<Address, Long> {
}
