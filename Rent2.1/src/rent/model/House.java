package rent.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class House {

	@Id
	private int houseID;

	public int getHouseID() {
		return houseID;
	}

	public void setHouseID(int houseID) {
		this.houseID = houseID;
	}
	
}
