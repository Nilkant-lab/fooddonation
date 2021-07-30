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
@Table(name="raiserequest")
public class RaiseFoodRequest {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="USER_ID")
	private int userId;
	
	@Column(name="Type")
	private String type;
	
	

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name="NAME")
	private String name;
	
	@Column(name="LOCATION")
	private String location;
	
	@Column(name="CONTACT_NO")
	private String contactNo;
	
	@Column(name="PURPOSE_OF_DONATION")
	private String purposeOfDonation;
	
	@Column(name="NO_OF_SERVINGS")
	private String noOfServings;
	
	@Column(name="STATUS")
	private String status;
	

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

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
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

	public String getNoOfServings() {
		return noOfServings;
	}

	public void setNoOfServings(String noOfServings) {
		this.noOfServings = noOfServings;
	}

	
	
}
