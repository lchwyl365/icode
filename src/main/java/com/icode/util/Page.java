package com.icode.util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("serial")
public class Page implements Serializable{
	
	private int limit = 10; // 每页显示条数
	private int offset = 0; //起始行号
	private long total = -1; // 总数
	@SuppressWarnings("rawtypes")
	private List datas = new ArrayList(); // 结果集
	private String param;

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public String getParam() {
		return param;
	}

	public void setParam(String param) {
		this.param = param;
	}

	@SuppressWarnings("rawtypes")
	public List getDatas() {
		return datas;
	}

	@SuppressWarnings("rawtypes")
	public void setDatas(List datas) {
		this.datas = datas;
	}

	
}