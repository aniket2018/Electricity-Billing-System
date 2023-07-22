package entities;

public class user {

	private int id;
	private String uname ;
	private String uemail ;
	private String upwd;
	private String mno  ;
	private String cno ;
	
	public user() {
		super();
	}
	
	public user(String uname,String uemail,String upwd,String mno,String cno) {
		super();
		this.uname=uname;
		this.uemail=uemail;
		this.upwd=upwd;
		this.mno=mno;
		this.cno=cno;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String toString() {
		return "user[id="+id+",username"+uname+",email"+uemail+",password"+upwd+",Mobile No"+mno+",Customer No"+cno+"]";
	}

}
