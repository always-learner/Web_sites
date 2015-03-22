package rent.model;

import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.IndexColumn;
import org.hibernate.annotations.Type;

@Entity
@Table(name="LandlordUser")
@PrimaryKeyJoinColumn(name="OwnerID")
public class LandlordUser extends User{
	
	
	private String userPlan;
	@Type(type="string")
	private List<Advertisement> advertisement;
	
	public LandlordUser()
	{}
	public LandlordUser(String firstName, String lastName, String email,
			String mobileNo, String password, String address, String plan) {
		super(firstName,lastName,email,password,mobileNo,address);
		this.userPlan=plan;
			
	}
		
	public String getUserPlan() {
		return userPlan;
	}
	public void setUserPlan(String userPlan) {
		this.userPlan = userPlan;
	}
	 	@OneToMany(cascade={CascadeType.ALL})
	public List<Advertisement> getAdvertisement() {
		return advertisement;
	}
	public void setAdvertisement(List<Advertisement> advertisement) {
		this.advertisement = advertisement;
	}
	
}
