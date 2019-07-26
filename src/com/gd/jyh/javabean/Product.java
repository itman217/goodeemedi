package com.gd.jyh.javabean;

public class Product {
	private String productNo;
	private String productName;
	private int prdductQty;
	private int productprice;

	public String getProductNo() {
		return productNo;
	}

	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getPrdductQty() {
		return prdductQty;
	}

	public void setPrdductQty(int prdductQty) {
		this.prdductQty = prdductQty;
	}

	public int getProductprice() {
		return productprice;
	}

	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}

	public Product(String productNo, String productName, int prdductQty, int productprice) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.prdductQty = prdductQty;
		this.productprice = productprice;
	}
	

}
