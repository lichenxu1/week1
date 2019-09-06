package com.bw.bean;

public class Zhong {

	
	private int zid;
	
	private int did;
	
	private int tid;

	public Zhong() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Zhong(int zid, int did, int tid) {
		super();
		this.zid = zid;
		this.did = did;
		this.tid = tid;
	}

	public int getZid() {
		return zid;
	}

	public void setZid(int zid) {
		this.zid = zid;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	@Override
	public String toString() {
		return "Zhong [zid=" + zid + ", did=" + did + ", tid=" + tid + "]";
	}
	
	
}
