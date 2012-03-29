package mock.appcode.common.valueobjects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Town")
public class TownVO {

	private int townID;
	private CountyVO countyVO;
	private String townName;

	public TownVO(int townID, CountyVO countyVO, String townName) {
		super();
		this.townID = townID;
		this.countyVO = countyVO;
		this.townName = townName;
	}

	public TownVO() {
		super();
	}

	@Id
	@GeneratedValue
	@Column(name = "TownID")
	public int getTownID() {
		return townID;
	}

	public void setTownID(int townID) {
		this.townID = townID;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	public CountyVO getCountyVO() {
		return countyVO;
	}

	public void setCountyVO(CountyVO countyVO) {
		this.countyVO = countyVO;
	}

	@Column(name = "TownName")
	public String getTownName() {
		return townName;
	}

	public void setTownName(String townName) {
		this.townName = townName;
	}

}
