package com.bhumata.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table
public class User implements Serializable {

	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(nullable=false,unique = true)
	private Long Uid;
	@Column(nullable=false,length=20)
	private String fname;
	@Column(nullable=false,length=20)
	private String lname;
	@Column(nullable=false,length=10)
	private Long contact;
	@Column(nullable=false,length=30,unique = true)
	private String email;
	@Column(nullable=false,length=20)
	private String password;
	@Column(nullable=true,length=50)
	private String hashcode;
	@Column(length=20)
	private String status;
	@Column(name="CREATION_DATE")
	@Temporal(TemporalType.TIMESTAMP)
	private Date userCreation_date;
	@Column(name="Email_ResendTime")
	@Temporal(TemporalType.TIMESTAMP)
	private Date emailResendTime;
	
	public Long getUid() {
		return Uid;
	}
	public void setUid(Long uid) {
		Uid = uid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public Long getContact() {
		return contact;
	}
	public void setContact(Long contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	public String getHashcode() {
		return hashcode;
	}
	public void setHashcode(String hashcode) {
		this.hashcode = hashcode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getUserCreation_date() {
		return userCreation_date;
	}
	public void setUserCreation_date(Date userCreation_date) {
		this.userCreation_date = userCreation_date;
	}
	public Date getEmailResendTime() {
		return emailResendTime;
	}
	public void setEmailResendTime(Date emailResendTime) {
		this.emailResendTime = emailResendTime;
	}
	
	
	
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((Uid == null) ? 0 : Uid.hashCode());
		result = prime * result + ((contact == null) ? 0 : contact.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((emailResendTime == null) ? 0 : emailResendTime.hashCode());
		result = prime * result + ((fname == null) ? 0 : fname.hashCode());
		result = prime * result + ((hashcode == null) ? 0 : hashcode.hashCode());
		result = prime * result + ((lname == null) ? 0 : lname.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((status == null) ? 0 : status.hashCode());
		result = prime * result + ((userCreation_date == null) ? 0 : userCreation_date.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (Uid == null) {
			if (other.Uid != null)
				return false;
		} else if (!Uid.equals(other.Uid))
			return false;
		if (contact == null) {
			if (other.contact != null)
				return false;
		} else if (!contact.equals(other.contact))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (emailResendTime == null) {
			if (other.emailResendTime != null)
				return false;
		} else if (!emailResendTime.equals(other.emailResendTime))
			return false;
		if (fname == null) {
			if (other.fname != null)
				return false;
		} else if (!fname.equals(other.fname))
			return false;
		if (hashcode == null) {
			if (other.hashcode != null)
				return false;
		} else if (!hashcode.equals(other.hashcode))
			return false;
		if (lname == null) {
			if (other.lname != null)
				return false;
		} else if (!lname.equals(other.lname))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (status == null) {
			if (other.status != null)
				return false;
		} else if (!status.equals(other.status))
			return false;
		if (userCreation_date == null) {
			if (other.userCreation_date != null)
				return false;
		} else if (!userCreation_date.equals(other.userCreation_date))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "User [Uid=" + Uid + ", fname=" + fname + ", lname=" + lname + ", contact=" + contact + ", email="
				+ email + ", password=" + password + ", hashcode=" + hashcode + ", status=" + status
				+ ", userCreation_date=" + userCreation_date + ", emailResendTime=" + emailResendTime + ", getUid()="
				+ getUid() + ", getFname()=" + getFname() + ", getLname()=" + getLname() + ", getContact()="
				+ getContact() + ", getEmail()=" + getEmail() + ", getPassword()=" + getPassword() + ", getHashcode()="
				+ getHashcode() + ", getStatus()=" + getStatus() + ", getUserCreation_date()=" + getUserCreation_date()
				+ ", getEmailResendTime()=" + getEmailResendTime() + ", hashCode()=" + hashCode() + ", getClass()="
				+ getClass() + ", toString()=" + super.toString() + "]";
	}
		public User(Long uid, String fname, String lname, Long contact, String email, String password, String hashcode,
			String status, Date userCreation_date, Date emailResendTime) {
		super();
		Uid = uid;
		this.fname = fname;
		this.lname = lname;
		this.contact = contact;
		this.email = email;
		this.password = password;
		this.hashcode = hashcode;
		this.status = status;
		this.userCreation_date = userCreation_date;
		this.emailResendTime = emailResendTime;
	}
		public User() {
			super();
			// TODO Auto-generated constructor stub
		}
		
		
		
	
	
	
	
	
	
}
