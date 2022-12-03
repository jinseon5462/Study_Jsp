package common;

public class BookVO {
	private int bcode;
	private String title;
	private	String author;
	private String publisher;
	private int price;
	private String binfo;
	
	
	public BookVO() {}
	
	public BookVO(int bcode, String title, String author, String publisher, int price, String binfo) {
		this.bcode = bcode;
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.price = price;
		this.binfo = binfo;
	}
	public int getBcode() {
		return bcode;
	}
	public void setBcode(int bcode) {
		this.bcode = bcode;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getBinfo() {
		return binfo;
	}
	public void setBinfo(String binfo) {
		this.binfo = binfo;
	}
	
	
}
