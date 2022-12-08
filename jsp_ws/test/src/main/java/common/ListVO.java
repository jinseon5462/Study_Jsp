package common;

public class ListVO {
	private String shopno;
	private String shopname;
	private String orderno;
	private String orderdate;
	private String pcode;
	private String pname;
	private int amount; 
	private int cost;
	private int custprice;
	private int discountprice;
	private int totalCount;
	private int discountrate1;
	private int discountrate2;
	
	
	
	public int getDiscountrate1() {
		return discountrate1;
	}
	public void setDiscountrate1(int discountrate1) {
		this.discountrate1 = discountrate1;
	}
	public int getDiscountrate2() {
		return discountrate2;
	}
	public void setDiscountrate2(int discountrate2) {
		this.discountrate2 = discountrate2;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public String getShopno() {
		return shopno;
	}
	public void setShopno(String shopno) {
		this.shopno = shopno;
	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getCustprice() {
		return custprice;
	}
	public void setCustprice(int custprice) {
		this.custprice = custprice;
	}
	public int getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(int discountprice) {
		this.discountprice = discountprice;
	}
}
