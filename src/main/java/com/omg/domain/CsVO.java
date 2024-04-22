package com.omg.domain;

import java.util.Date;

public class CsVO {

	private String csPostNum;
	private String csTitle;
	private String csContent;
	private String csWriter;
	private Date reg_date;
	
	public String getCsPostNum() {
		return csPostNum;
	}
	public void setCsPostNum(String csPostNum) {
		this.csPostNum = csPostNum;
	}
	public String getCsTitle() {
		return csTitle;
	}
	public void setCsTitle(String csTitle) {
		this.csTitle = csTitle;
	}
	public String getCsContent() {
		return csContent;
	}
	public void setCsContent(String csContent) {
		this.csContent = csContent;
	}
	public String getCsWriter() {
		return csWriter;
	}
	public void setCsWriter(String csWriter) {
		this.csWriter = csWriter;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

}
