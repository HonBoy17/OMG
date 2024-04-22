package com.omg.domain;

import java.util.Date;

public class EmpVO {
	
	private String empCode;
	private String empPassword;
	private String empName;
	private String empPhone;
	private String empArea;
	private int level;
	private int accountStatus;
	private Date hireDate;
	private Date retirementDate;
	
	public String getEmpCode() {
		return empCode;
	}
	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}
	public String getEmpPassword() {
		return empPassword;
	}
	public void setEmpPassword(String empPassword) {
		this.empPassword = empPassword;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpPhone() {
		return empPhone;
	}
	public void setEmpPhone(String empPhone) {
		this.empPhone = empPhone;
	}
	public String getEmpArea() {
		return empArea;
	}
	public void setEmpArea(String empArea) {
		this.empArea = empArea;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getAccountStatus() {
		return accountStatus;
	}
	public void setAccountStatus(int accountStatus) {
		this.accountStatus = accountStatus;
	}
	public Date getHireDate() {
		return hireDate;
	}
	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}
	public Date getRetirementDate() {
		return retirementDate;
	}
	public void setRetirementDate(Date retirementDate) {
		this.retirementDate = retirementDate;
	}

}
