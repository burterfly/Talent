package com.oracle.ysyj.model;

public class OrderAddContract {
	  int	Cid;
//	  text CContent;
	  int SId;
	  int  UMid;			
	
    public int getCid() {
		return Cid;
	}
	public void setCid(int cid) {
		Cid = cid;
	}
//	public text getCContent() {
//		return CContent;
//	}
//	public void setCContent(text cContent) {
//		CContent = cContent;
//	}
	public int getSId() {
		return SId;
	}
	public void setSId(int sId) {
		SId = sId;
	}
	public int getUMid() {
		return UMid;
	}
	public void setUMid(int uMid) {
		UMid = uMid;
	}

  
}
