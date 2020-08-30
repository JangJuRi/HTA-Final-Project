package com.sample.web.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.objenesis.instantiator.annotations.Typology;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.service.MailService;
import com.sample.service.UserService;
import com.sample.utils.TempKey;
import com.sample.vo.MoimUser;
import com.sample.vo.MoimUserCate;
import com.sample.web.form.SignUpForm;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
@RequestMapping("/login")
public class SignUpController {

	
	@Autowired
	UserService userService;
	
	@Autowired
	MailService mailService;
	
	private SignUpForm signUpForm = new SignUpForm();
	
	@PostMapping("/check.do")
	@ResponseBody
	public String checkId (@RequestBody String userId) {
		MoimUser user = userService.getUserDetail(userId);
		if(user != null) {
			return "false";
		}
		return "true";
	}
	
	@PostMapping("/signup1.do")
	@ResponseBody
	public String step1Submit (@RequestBody @Valid SignUpForm signUpForm1,
			BindingResult errors) {
		if(errors.hasErrors()) {
			return "false";
		}
		signUpForm.setId(signUpForm1.getId());
		signUpForm.setName(signUpForm1.getName());
		signUpForm.setNickname(signUpForm1.getNickname());
		signUpForm.setPassword(signUpForm1.getPassword());
		signUpForm.setEmail(signUpForm1.getEmail());
		signUpForm.setTel(signUpForm1.getTel());
		signUpForm.setBirth(signUpForm1.getBirth());
		signUpForm.setGender(signUpForm1.getGender());
		signUpForm.setContent(signUpForm1.getContent());
		signUpForm.setLocationNo(signUpForm1.getLocationNo());
		return "true";
	}
	
	@RequestMapping(value="/signup2.do" , method = RequestMethod.GET)
	public String step2Submit (@RequestParam("cateno") long cateNo, HttpSession session) {
		
		MoimUser user = new MoimUser();
		user.setId(signUpForm.getId());
		user.setName(signUpForm.getName());
		user.setNickname(signUpForm.getNickname());
		user.setPassword(signUpForm.getPassword());
		user.setEmail(signUpForm.getEmail());
		user.setTel(signUpForm.getTel());
		user.setBirthDate(signUpForm.getBirth());
		user.setGender(signUpForm.getGender());
		user.setContent(signUpForm.getContent());
		user.setLocationNo(signUpForm.getLocationNo());
		
		MoimUserCate userCate = new MoimUserCate();
		userCate.setUserId(signUpForm.getId());
		userCate.setMainCateNo(cateNo);
		
		userService.signUpUser(user, userCate);
		session.setAttribute("LOGIN_USER", user);
		return "redirect:/home.do?status=new";
	}
	
	@PostMapping("/sendSMS.do")
	@ResponseBody
	public Map<String, String> sendSMS(@RequestBody HashMap<String, String> tel) {
		String api_key = "NCSDOW14BPDDNDI5";
		String api_secret = "PYPRCYLXGCOK62GYZWZDEZJARATEFYUV";
		Message coolsms = new Message(api_key, api_secret);
		String key = new TempKey().getNumKey(6);
		HashMap<String, String> params = new HashMap<String,String>();
		Map<String, String> data  = new HashMap<String,String>();
		
		params.put("to", tel.get("phone"));
	    params.put("from", "01050193184");
	    params.put("type", "SMS");
	    params.put("text", "안녕하세요 소모임입니다. 인증번호는 [" + key + "] 입니다.");
	    try {
	        JSONObject obj = (JSONObject) coolsms.send(params);
	        System.out.println(obj.toString());
	      } catch (CoolsmsException e) {
	        System.out.println(e.getMessage());
	        System.out.println(e.getCode());
	      }
	    data.put("key", key);
	    return data;
	}
	
	// 메일 인증하기
		@PostMapping("/sendMail.do")
		@ResponseBody
		public Map<String, String> sendMail(@RequestBody HashMap<String, String> email) throws Exception{
			
			Map<String, String> data = mailService.sendMail(email.get("mail"));
			
			return data;
			
		}
	
	
}
