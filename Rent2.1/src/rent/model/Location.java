package rent.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Location {
	
	private int locationId;
	private Advertisement adId;
	private Address address;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getLocationId() {
		return locationId;
	}
	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}
	@OneToOne
	public Advertisement getAdId() {
		return adId;
	}
	public void setAdId(Advertisement adId) {
		this.adId = adId;
	}
	@OneToOne
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
}
