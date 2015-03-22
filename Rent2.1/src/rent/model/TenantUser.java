package rent.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="TenantUser")
@PrimaryKeyJoinColumn(name="ClientID")
public class TenantUser extends User{
	

	public TenantUser()
	{}
	public TenantUser(String firstName, String lastName, String email,
			String mobileNo,String password, String address) {
		super(firstName,lastName,email,password,mobileNo,address);
		
	}
	

}
