package com.sample.web.form;

import javax.validation.constraints.NotBlank;

public class ManagerForm {

	@NotBlank(message = "제목을 입력해주세요.")
	private String boardTitle;
	@NotBlank(message = "내용을 입력해주세요.")
	private String boardContent;
	
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
}
