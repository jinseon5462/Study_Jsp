package db;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import common.MemberVO;

public class UserDAO {
	//회원번호(자동발생)
	public int showCustno() {
		int result = 0;
		Connection conn = DBcon.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM member_tbl_02 order by custno DESC";
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			rs.next();
			result = rs.getInt("custno") + 1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	//회원등록
	public int insert(MemberVO member) {
		String query = "INSERT INTO member_tbl_02 (custno, custname, phone, address, joindate, grade, city)"
				+ " VALUES((SELECT IFNULL(MAX(custno) + 1, 1) FROM member_tbl_02 mt), ?, ?, ?, DATE_FORMAT(NOW(), '%Y-%m-%d'), ?, ?)";
		Connection conn = DBcon.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getCustname());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(3, member.getAddress());
			pstmt.setString(4, member.getGrade());
			pstmt.setString(5, member.getCity());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	// 회원목록 조회
	public ArrayList<MemberVO> selectAll(){
		ArrayList<MemberVO> list = new ArrayList<>();
		String query = "SELECT * FROM member_tbl_02";
		Connection conn = DBcon.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				MemberVO member = new MemberVO();
				member.setCustno(rs.getInt("custno"));
				member.setCustname(rs.getString("custname"));
				member.setPhone(rs.getString("phone"));
				member.setAddress(rs.getString("address"));
				member.setJoindate(rs.getDate("joindate"));
				member.setGrade(rs.getString("grade"));
				member.setCity(rs.getString("city"));
				list.add(member);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	// 회원조회
	public MemberVO selectOne(int custno) {
		MemberVO member = new MemberVO();
		Connection conn = DBcon.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM member_tbl_02 WHERE custno = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, custno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				member.setCustno(rs.getInt("custno"));
				member.setCustname(rs.getString("custname"));
				member.setPhone(rs.getString("phone"));
				member.setAddress(rs.getString("address"));
				member.setJoindate(rs.getDate("joindate"));
				member.setGrade(rs.getString("grade"));
				member.setCity(rs.getString("city"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;
	}
	
	public void update(MemberVO member) {
		Connection conn = DBcon.getConnection();
		PreparedStatement pstmt = null;
		String query = "UPDATE member_tbl_02 SET "
				+ "custname = ?, "
				+ "phone = ?, "
				+ "address = ?, "
				+ "grade = ?, "
				+ "city = ? "
				+ "WHERE custno = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getCustname());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(3, member.getAddress());
			pstmt.setString(4, member.getGrade());
			pstmt.setString(5, member.getCity());
			pstmt.setInt(6, member.getCustno());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public String getRegDate() {
		String query = "SELECT CURDATE() date";
		Connection conn = DBcon.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		
		String result = "";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			rs.next();
			result = rs.getString("date");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<MemberVO> selectAllSales(){
		ArrayList<MemberVO> list = new ArrayList<>();
		String query = "SELECT mbt.custno, mbt.custname, mbt.grade, (SUM(mnt.pcost * mnt.amount)) total"
				+ " FROM member_tbl_02 mbt , money_tbl_02 mnt "
				+ " WHERE mbt.custno = mnt.custno"
				+ " GROUP BY mbt.custno"
				+ " ORDER BY total DESC;";
		Connection conn = DBcon.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				MemberVO member = new MemberVO();
				member.setCustno(rs.getInt("custno"));
				member.setCustname(rs.getString("custname"));
				member.setGrade(rs.getString("grade"));
				member.setTotal(rs.getInt("total"));
				list.add(member);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
