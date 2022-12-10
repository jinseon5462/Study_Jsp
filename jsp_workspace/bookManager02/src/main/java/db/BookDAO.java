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
		String query = "INSERT INTO BookTbl (bcode, title, author, publisher, price, binfo)"
				+ " VALUES ((SELECT IFNULL(MAX(bcode) + 1, 1) FROM BookTbl b), ?, ?, ?, ? ,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, book.getTitle());
			pstmt.setString(2, book.getAuthor());
			pstmt.setString(3, book.getPublisher());
			pstmt.setInt(4, book.getPrice());
			pstmt.setString(5, book.getBinfo());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public BookVO selectOne(int bcode) {
		BookVO book = new BookVO();
		Connection conn = DBcon.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM BookTbl WHERE bcode = ?";
		try {
			pstmt = conn.prepareStatement(query);
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
	
	public ArrayList<BookVO> selectAll() {
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
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void update(BookVO book) {
		Connection conn = DBcon.getConnection();
		PreparedStatement pstmt = null;
		String query = "UPDATE BookTbl SET "
				+ "title = ?, "
				+ "author = ?, "
				+ "publisher = ?, "
				+ "price = ?, "
				+ "binfo = ? "
				+ "WHERE bcode = ?";
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
		Statement stmt = null;
		String query = "DELETE FROM BookTbl WHERE bcode = " + bcode;
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int rowCount() {
		int result = 0;
		Connection conn = DBcon.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			String query = "SELECT COUNT(*) cnt FROM BookTbl";
			rs = stmt.executeQuery(query);
			rs.next();
			result = rs.getInt("cnt");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
