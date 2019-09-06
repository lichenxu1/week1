package com.bw.service;

import java.util.List;
import java.util.Map;

import com.bw.bean.Type;
import com.bw.bean.Zhong;

public interface MyService {
	
	//展示列表
	List<Map<String, Object>>list(Map<String, Object>map);
	//删除中间表
	void delete(String did);
	//删除电影表
	void deletes(String did);
	//进行获取下拉框
	List<Type> xia(); 
	//进行添加
	void add(Map<String, Object>map);
	//进行回显
	Map<String, Object>show(int did);


}
