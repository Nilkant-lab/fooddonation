package com.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "raise_logisrequest")
public class RaiseLogisticRequest {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "USER_ID")
	private int userId;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "Type")
	private String type;

	@Column(name = "NAME")
	private String name;

	@Column(name = "LOCATION")
	private String location;

	@Column(name = "Source")
	private String slocation;

	@Column(name = "Destination")
	private String dlocation;

	@Column(name = "CONTACT_NO")
	private String contactNo;

	@Column(name = "PURPOSE_OF_DONATION")
	private String purposeOfDonation;

	@Column(name = "STATUS")
	private String status;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getSLocation() {
		return slocation;
	}

	public void setSLocation(String slocation) {
		this.slocation = slocation;
	}

	public String getDLocation() {
		return dlocation;
	}

	public void setDLocation(String dlocation) {
		this.dlocation = dlocation;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getPurposeOfDonation() {
		return purposeOfDonation;
	}

	public void setPurposeOfDonation(String purposeOfDonation) {
		this.purposeOfDonation = purposeOfDonation;
	}

}
