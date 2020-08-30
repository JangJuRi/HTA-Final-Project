package com.sample.service;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.sample.utils.MailHandler;
import com.sample.utils.TempKey;

@Service
public class MailService {

	@Autowired
	protected JavaMailSender mailSender;


	public Map<String, String> sendMail(String email) throws UnsupportedEncodingException  {
		String key = new TempKey().getNumKey(6);
		Map<String, String> data = new HashMap<String,String>();
		try {
			MailHandler sendMail = new MailHandler(mailSender);
			sendMail.setSubject("[소모임 이메일 인증]");
			sendMail.setText("<h1>이메일인증안내</h1>"
					+ "<p>인증번호는 "+ key + "입니다. </p>");
			sendMail.setFrom("kwsoj123@gmail.com", "소모임");
			sendMail.setTo(email);
			sendMail.send();
			data.put("status", "success");
		} catch (MessagingException e) {
			data.put("status", "fail");
			e.printStackTrace();
		}
		data.put("key", key);
		
		return data;
	}
}
