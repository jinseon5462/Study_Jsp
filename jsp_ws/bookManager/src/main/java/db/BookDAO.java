package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.BookVO;

public class BookDAO {
	
	public void insert(BookVO book) {
		Connection conn = DBcon.getConnection();
		String insert_query = "INSERT INTO BookTbl (bcode, title, author, publisher, price, binfo) VALUES((SELECT IFNULL(MAX(bcode) + 1, 1) FROM bookTbl b), ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(insert_query);
			pstmt.setString(1, book.getTitle());
			pstmt.setString(2, book.getAuthor());
			pstmt.setString(3, book.getPublisher());
			pstmt.setInt(4, book.getPrice());
			pstmt.setString(5, book.getBinfo());
			int result = pstmt.executeUpdate();
			if(result == 1) {
				System.out.println("등록 성공");
			}else {
				System.out.println("등록 실패");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public BookVO selectOne(int bcode) {
		BookVO book = new BookVO();
		Connection conn = DBcon.getConnection();
		ResultSet rs = null;
		String query = "SELECT * FROM BookTbl WHERE bcode = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bcode);
			rs = pstmt.executeQuery();
			rs.next();
			book.setBcode(rs.getInt("bcode"));
			book.setTitle(rs.getString("title"));
			book.setAuthor(rs.getString("author"));
			book.setPublisher(rs.getString("publisher"));
			book.setPrice(rs.getInt("price"));
			book.setBinfo(rs.getString("binfo"));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return book;
	}
	
	public ArrayList<BookVO> selectAll(){
		ArrayList<BookVO> list = new ArrayList<>();
		Connection conn = DBcon.getConnection();
		ResultSet rs = null;
		try {
			Statement stmt = conn.createStatement();
			String query = "SELECT * FROM BookTbl";
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				BookVO book = new BookVO();
				book.setBcode(rs.getInt("bcode"));
				book.setTitle(rs.getString("title"));
				book.setAuthor(rs.getString("author"));
				book.setPublisher(rs.getString("publisher"));
				book.setPrice(rs.getInt("price"));
				book.setBinfo(rs.getString("binfo"));
				list.add(book);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void update(BookVO book) {
		String query = "UPDATE BookTbl "
				+ "SET title = ?"
				+ ",author = ?, "
				+ "publisher = ?, "
				+ "price = ?, "
				+ "binfo = ?"
				+ " WHERE bcode = ?";
		Connection conn = DBcon.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, book.getTitle());
			pstmt.setString(2, book.getAuthor());
			pstmt.setString(3, book.getPublisher());
			pstmt.setInt(4, book.getPrice());
			pstmt.setString(5, book.getBinfo());
			pstmt.setInt(6, book.getBcode());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void delete(int bcode) {
		Connection conn = DBcon.getConnection();
		String query = "DELETE FROM BookTbl WHERE bcode = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bcode);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int getRowCount() {
		int cnt = 0;
		Connection conn = DBcon.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT COUNT(*) cnt FROM BookTbl");
			rs.next();
			cnt = rs.getInt("cnt");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
}
