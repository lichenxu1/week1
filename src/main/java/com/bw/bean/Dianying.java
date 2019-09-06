package com.bw.bean;

public class Dianying {

	private int did;
	
	private String dname;
	
	private String js;
	
	private String dy;
	
	private String date;

	public Dianying() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Dianying(int did, String dname, String js, String dy, String date) {
		super();
		this.did = did;
		this.dname = dname;
		this.js = js;
		this.dy = dy;
		this.date = date;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getJs() {
		return js;
	}

	public void setJs(String js) {
		this.js = js;
	}

	public String getDy() {
		return dy;
	}

	public void setDy(String dy) {
		this.dy = dy;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Dianying [did=" + did + ", dname=" + dname + ", js=" + js + ", dy=" + dy + ", date=" + date + "]";
	}
	
	
	
}
