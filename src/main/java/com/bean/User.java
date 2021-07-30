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
@Table(name="USER")
public class User  {
private String type; 

		public String getType() {
	return type;
}

public void setType(String type) {
	this.type = type;
}

		public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEnum() {
		return Enum;
	}

	public void setEnum(String enum1) {
		Enum = enum1;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSq1() {
		return sq1;
	}

	public void setSq1(String sq1) {
		this.sq1 = sq1;
	}

	public String getSq2() {
		return sq2;
	}

	public void setSq2(String sq2) {
		this.sq2 = sq2;
	}

	public String getSq3() {
		return sq3;
	}

	public void setSq3(String sq3) {
		this.sq3 = sq3;
	}

		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name="USER_ID")
		private int userId;
		
		@Column(name="FIRST_NAME")
		private String firstName;
		
		@Column(name="LAST_NAME")
		private String lastName;
		
		@Column(name="Gender")
		private String Enum;
		
		@Column(name="DATE_OF_BIRTH")
		private String dob;
		
		@Column(name="EMAIL")
		private String email;
		
		@Column(name="CONTACT_NO")
		private String contactNo;
		

		@Column(name="PASSWORD")
		private String password;
		

		@Column(name="CATEGORY")
		private String category;
		

		@Column(name="SQ1")
		private String sq1;
		
		@Column(name="SQ2")
		private String sq2;
		
		@Column(name="SQ3")
		private String sq3;
		
}
