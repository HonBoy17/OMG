package com.omg.domain;

import java.util.Date;

public class MemberVO {
	
	private String mbId;
	private String mbPassword;
	private String mbName;
	private String mbNickname;
	private String mbAge;
	private String mbGender;
	private String mbPhone;
	private String mbPostcode;
	private String mbAddress;
	private String mbDetailAddr;
	private String mbRequestPrsnl;
	private String mbRequestAge;
	private String mbRequestGender;
	private String mbRequestTime;
	private String mbCaution;
	private int mbloginCnt;
	private int level;
	private Date reg_date;
	private Date up_date;
	
	public String getMbId() {
		return mbId;
	}
	public void setMbId(String mbId) {
		this.mbId = mbId;
	}
	public String getMbPassword() {
		return mbPassword;
	}
	public void setMbPassword(String mbPassword) {
		this.mbPassword = mbPassword;
	}
	public String getMbName() {
		return mbName;
	}
	public void setMbName(String mbName) {
		this.mbName = mbName;
	}
	public String getMbNickname() {
		return mbNickname;
	}
	public void setMbNickname(String mbNickname) {
		this.mbNickname = mbNickname;
	}
	public String getMbAge() {
		return mbAge;
	}
	public void setMbAge(String mbAge) {
		this.mbAge = mbAge;
	}
	public String getMbGender() {
		return mbGender;
	}
	public void setMbGender(String mbGender) {
		this.mbGender = mbGender;
	}
	public String getMbPhone() {
		return mbPhone;
	}
	public void setMbPhone(String mbPhone) {
		this.mbPhone = mbPhone;
	}
	public String getMbPostcode() {
		return mbPostcode;
	}
	public void setMbPostcode(String mbPostcode) {
		this.mbPostcode = mbPostcode;
	}
	public String getMbAddress() {
		return mbAddress;
	}
	public void setMbAddress(String mbAddress) {
		this.mbAddress = mbAddress;
	}
	public String getMbDetailAddr() {
		return mbDetailAddr;
	}
	public void setMbDetailAddr(String mbDetailAddr) {
		this.mbDetailAddr = mbDetailAddr;
	}
	public String getMbRequestPrsnl() {
		return mbRequestPrsnl;
	}
	public void setMbRequestPrsnl(String mbRequestPrsnl) {
		this.mbRequestPrsnl = mbRequestPrsnl;
	}
	public String getMbRequestAge() {
		return mbRequestAge;
	}
	public void setMbRequestAge(String mbRequestAge) {
		this.mbRequestAge = mbRequestAge;
	}
	public String getMbRequestGender() {
		return mbRequestGender;
	}
	public void setMbRequestGender(String mbRequestGender) {
		this.mbRequestGender = mbRequestGender;
	}
	public String getMbRequestTime() {
		return mbRequestTime;
	}
	public void setMbRequestTime(String mbRequestTime) {
		this.mbRequestTime = mbRequestTime;
	}
	public String getMbCaution() {
		return mbCaution;
	}
	public void setMbCaution(String mbCaution) {
		this.mbCaution = mbCaution;
	}
	public int getMbloginCnt() {
		return mbloginCnt;
	}
	public void setMbloginCnt(int mbloginCnt) {
		this.mbloginCnt = mbloginCnt;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getUp_date() {
		return up_date;
	}
	public void setUp_date(Date up_date) {
		this.up_date = up_date;
	}
	
}