package com.bw.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bw.bean.Type;
import com.bw.bean.Zhong;
import com.bw.dao.MyDao;

@Service
public class MyServiceimpl implements MyService {

	@Autowired
	private MyDao dao;
	@Override
	public List<Map<String, Object>> list(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.list(map);
	}

	@Override
	public void delete(String did) {
		// TODO Auto-generated method stub
		dao.delete(did);
	}
	@Override
	public void deletes(String did) {
		// TODO Auto-generated method stub
		dao.deletes(did);
	}

	@Override
	public void add(Map<String, Object> map) {
		// TODO Auto-generated method stub
		dao.add(map);
		
	}

	@Override
	public List<Type> xia() {
		// TODO Auto-generated method stub
		return dao.xia();
	}

	@Override
	public Map<String, Object> show(int did) {
		// TODO Auto-generated method stub
		return dao.show(did);
	}





}
