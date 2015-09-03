package com.tss.springmvc.poolsawat.controller;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.tss.springmvc.poolsawat.model.User;

@Controller
public class RestClientController {

	@RequestMapping(value = "/")
	public String index() {
		return "";
	}

	@RequestMapping(value = "/restclient")
	public String restclient() {
		return "restclient";
	}

	@RequestMapping(value = "/userList")
	public String userList() {
		return "userList";
	}

	@RequestMapping(value = "/userForm")
	public String userForm(@RequestParam(value = "id", required = false) Long id,ModelMap model) {
		User user  = new User();
		try {
			if (id != null) {
				HttpClient client = new DefaultHttpClient();
				HttpGet request = new HttpGet("http://localhost:9000/user/getUser/"+String.valueOf(id));
				HttpResponse response = client.execute(request);
				String json = EntityUtils.toString(response.getEntity(), "UTF-8");
				user = new Gson().fromJson(json, User.class);
				
			}
			System.out.println(" user ::=="+user);
			model.addAttribute("user", user);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "userForm";
	}
}
