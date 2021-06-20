package com.college.election.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CandidateRegistration {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int sino;
	private String Cname;
	private String registerno;
	private String img;
	private String Agenda;
	
	public CandidateRegistration() {
		super();
	}
	public CandidateRegistration(int sino, String cname, String registerno, String img, String agenda) {
		super();
		this.sino = sino;
		Cname = cname;
		this.registerno = registerno;
		this.img = img;
		Agenda = agenda;
	}

	public int getSino() {
		return sino;
	}
	public void setSino(int sino) {
		this.sino = sino;
	}
	public String getCname() {
		return Cname;
	}
	public void setCname(String cname) {
		Cname = cname;
	}
	public String getRegisterno() {
		return registerno;
	}
	public void setRegisterno(String registerno) {
		this.registerno = registerno;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getAgenda() {
		return Agenda;
	}
	public void setAgenda(String agenda) {
		Agenda = agenda;
	}
	@Override
	public String toString() {
		return "CandidateRegistration [sino=" + sino + ", Cname=" + Cname + ", registerno=" + registerno + ", img="
				+ img + ", Agenda=" + Agenda + "]";
	}

}
