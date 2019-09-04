package com.bw.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bw.bean.Type;
import com.bw.bean.Zhong;
import com.bw.service.MyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class MyController {

	@Autowired
	private MyService service;
	
	@RequestMapping("list.do")
	public String list(Model model,
			@RequestParam(defaultValue="")String dname,
			@RequestParam(defaultValue="1")int cpage){
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("dname", dname);
		
		PageHelper.startPage(cpage, 3);
		List<Map<String, Object>> list = service.list(map);
		PageInfo<Map<String, Object>> page = new PageInfo<Map<String, Object>>(list);
		model.addAttribute("list",list);
		model.addAttribute("map",map);
		model.addAttribute("map",map);
		model.addAttribute("page",page);
		return "list";
		
	}

	//删除
	@RequestMapping("delete.do")
	public Object delete(String did){
		
		service.delete(did);//进行删除中间表
		service.deletes(did);//进行删除电影表
		return "redirect:list.do";
		
	}
	//进行跳转到添加页面
	@RequestMapping("xia.do")
	public Object tj(Model model){
		
		List<Type> xia = service.xia();
		model.addAttribute("xia", xia);
		return "add";
	}

	//进行添加
	@RequestMapping("add.do")
	@ResponseBody
	public Object add(String dname,String js,String dy,String date,int tid){
		HashMap<String, Object> map = new HashMap<>();
		map.put("dname",dname);
		map.put("js",js);
		map.put("dy",dy);
		map.put("date",date);
		map.put("tid",tid);
		service.add(map);
		return true;
		
	}
	


}
