package com.atguigu.springboot.controller;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atguigu.springboot.bean.TAdmin;
import com.atguigu.springboot.service.TAdminService;

@Controller
public class TAdminController {
	
	@Autowired
	TAdminService adminService;
	
	@ResponseBody
	@RequestMapping("/getTAdminById/{id}")
	public TAdmin getTAdminById(@PathVariable("id") Integer id){
		return adminService.getTAdminById(id);
	}
	
}
