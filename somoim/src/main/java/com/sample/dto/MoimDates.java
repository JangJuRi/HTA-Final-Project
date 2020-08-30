package com.sample.dto;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MoimDates {

	private Date startDate;
	private Date endDate;
	
	public MoimDates() {}
	
	public MoimDates(Date startDate, Date endDate) {
		this.startDate = startDate;
		this.endDate = endDate;
	}
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(String stringStartDate) {
		stringStartDate = stringStartDate.replace("T", " ");
		try {
			this.startDate = sdf.parse(stringStartDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(String stringEndDate) {
		stringEndDate = stringEndDate.replace("T", " ");
		try {
			this.endDate = sdf.parse(stringEndDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}
