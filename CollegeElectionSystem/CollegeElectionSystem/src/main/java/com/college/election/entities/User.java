package com.college.election.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//Defining as an entity for database
@Entity
public class User {
//telling that it is an primary key of the table for database.
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
//if there is any column name mismatch we will be using this as	annotation to tell that to consider this attribute as that column.
    @Column(name="register_no")
	private int registerno;

	private String password;

	private String email;

	private String squestions;

	private String sanswers;

	private String name;

	@Column(name = "depa")
	private String department;

	private String gender;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRegisterno() {
		return registerno;
	}

	public void setRegisterno(int registerno) {
		this.registerno = registerno;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSquestions() {
		return squestions;
	}

	public void setSquestions(String squestions) {
		this.squestions = squestions;
	}

	public String getSanswers() {
		return sanswers;
	}

	public void setSanswers(String sanswers) {
		this.sanswers = sanswers;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public User() {
		super();
	}

	public User(int id, int registerno, String password, String email, String squestions, String sanswers, String name,
			String department, String gender) {
		super();
		this.id = id;
		this.registerno = registerno;
		this.password = password;
		this.email = email;
		this.squestions = squestions;
		this.sanswers = sanswers;
		this.name = name;
		this.department = department;
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", registerno=" + registerno + ", password=" + password + ", email=" + email
				+ ", squestions=" + squestions + ", sanswers=" + sanswers + ", name=" + name + ", department="
				+ department + ", gender=" + gender + "]";
	}

}
