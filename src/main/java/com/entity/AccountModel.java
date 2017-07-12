package com.entity;

import java.util.ArrayList;
import java.util.List;

@Table("account")
public class AccountModel {

	private Integer accountid;
	private Integer acc_accountid;
	private Integer dutyid;
	private String deptno;
	private String accountname;
	private String password;
	private String realname;


	private List<String> rights = new ArrayList<String>();

	public AccountModel() {
	}

	public void setAccountid(Integer accountid) {
		this.accountid = accountid;
	}

	public Integer getAccountid() {
		return this.accountid;
	}

	public void setAcc_accountid(Integer acc_accountid) {
		this.acc_accountid = acc_accountid;
	}

	public Integer getAcc_accountid() {
		return this.acc_accountid;
	}

	public void setDutyid(Integer dutyid) {
		this.dutyid = dutyid;
	}

	public Integer getDutyid() {
		return this.dutyid;
	}

	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}

	public String getDeptno() {
		return this.deptno;
	}

	public void setAccountname(String accountname) {
		this.accountname = accountname;
	}

	public String getAccountname() {
		return this.accountname;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return this.password;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getRealname() {
		return this.realname;
	}

	public List<String> getRights() {
		return rights;
	}

	public void setRights(List<String> rights) {
		this.rights = rights;
	}

}