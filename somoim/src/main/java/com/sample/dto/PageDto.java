package com.sample.dto;

public class PageDto {

	private long no;
	private int begin;
	private int end;
	
	public PageDto() {}
	
	

	public PageDto(long no, int begin, int end) {
		this.no = no;
		this.begin = begin;
		this.end = end;
	}



	public long getNo() {
		return no;
	}

	public void setNo(long no) {
		this.no = no;
	}

	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}
	
	
}
