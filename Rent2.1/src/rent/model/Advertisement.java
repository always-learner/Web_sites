package rent.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Advertisement {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int AdId;
	private Boolean status;
	private Date adPostDate;
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getAdId() {
		return AdId;
	}
	public void setAdId(int adId) {
		AdId = adId;
	}
	
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public Date getAdPostDate() {
		return adPostDate;
	}
	public void setAdPostDate(Date adPostDate) {
		this.adPostDate = adPostDate;
	}
	
		
}
