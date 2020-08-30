package com.sample.web.form;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;

public class SignUpForm {

	// 유저 관련
	@NotBlank(message="아이디를 입력해주세요.")
	@Length(min=5, message="아이디는 5글자 이상입니다.")
	@Pattern(regexp="^[a-z0-9]{5,}$", message="아이디는 소문자 및 숫자로만 구성 돼야합니다.")
	private String id;
	
	@NotBlank(message="이름은 필수입력값입니다.")
	@Length(min=2, message="이름은 2글자 이상입니다.")
	@Pattern(regexp="^[가-힣]{2,}$", message="이름은  한글로 구성해야 합니다.")
	private String name;
	
	@NotBlank(message="닉네임을 입력해주세요.")
	@Length(min=2, message="닉네임은 2글자 이상입니다.")
	@Pattern(regexp="^[a-zA-Z0-9가-힣]{2,}$", message="닉네임에 특수문자를 사용하실수 없습니다.")
	private String nickname;
	
	@NotBlank(message="비밀번호를 입력해주세요.")
	@Length(min=8, message="비밀번호는 8글자 이상이여야합니다.")
	private String password;
	
	@NotBlank(message="이메일을 입력해주세요.")
	@Email(message="정확한 이메일 형식을 입력해주세요.")
	private String email;
	
	@NotBlank(message="번호를 입력해주세요.")
	@Pattern(regexp="^[0-9]", message="숫자만 일력가능합니다.")
	private String tel;
	
	private String birth;
	
	private String gender;
	
	private String content;
	
	// 카테고리 관련
	private long mainCateNo;
	
	// 지역 관련
	private long locationNo;
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
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

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public long getMainCateNo() {
		return mainCateNo;
	}

	public void setMainCateNo(long mainCateNo) {
		this.mainCateNo = mainCateNo;
	}

	public long getLocationNo() {
		return locationNo;
	}

	public void setLocationNo(long locationNo) {
		this.locationNo = locationNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "SignUpForm [id=" + id + ", name=" + name + ", nickname=" + nickname + ", password=" + password
				+ ", email=" + email + ", tel=" + tel + ", birth=" + birth + ", gender=" + gender + ", content="
				+ content + ", mainCateNo=" + mainCateNo + ", locationNo=" + locationNo + "]";
	}
	
	
	
	
	
}
