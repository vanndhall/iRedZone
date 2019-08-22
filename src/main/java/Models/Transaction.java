package Models;

public class Transaction {
	int id;
	int number;
	String createdOn;
	int createdBy;
	boolean status;


	public Transaction() {
	}

	public Transaction(int id, int number, String createdOn, int createdBy, boolean status) {
		this.id = id;
		this.number = number;
		this.createdOn = createdOn;
		this.createdBy = createdBy;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(String createdOn) {
		this.createdOn = createdOn;
	}

	public int getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
}
