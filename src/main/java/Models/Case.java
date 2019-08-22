package Models;

public class Case {

	int id;
	String number;
	String description;
	int category;
	int status;
	int type;
	String createdBy;
	String createdOn;
	String handledBy;
	String handledOn;

	public Case() {
	}

	public Case(int id, String number, String description, int category, int status, int type, String createdBy, String createdOn, String handledBy, String handledOn) {
		this.id = id;
		this.number = number;
		this.description = description;
		this.category = category;
		this.status = status;
		this.type = type;
		this.createdBy = createdBy;
		this.createdOn = createdOn;
		this.handledBy = handledBy;
		this.handledOn = handledOn;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(String createdOn) {
		this.createdOn = createdOn;
	}

	public String getHandledBy() {
		return handledBy;
	}

	public void setHandledBy(String handledBy) {
		this.handledBy = handledBy;
	}

	public String getHandledOn() {
		return handledOn;
	}

	public void setHandledOn(String handledOn) {
		this.handledOn = handledOn;
	}
}
