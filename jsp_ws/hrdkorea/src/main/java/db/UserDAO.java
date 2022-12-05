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
	public int insert(MemberVO member) {
		String query = "INSERT INTO member_tbl_02 (custno, custname, phone, address, joindate, grade, city)"
				+ " VALUES((SELECT IFNULL(MAX(custno) + 1, 1) FROM member_tbl_02 mt), ?, ?, ?, ?, ?, ?)";
		Connection conn = DBcon.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getCustname());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(3, member.getAddress());
			java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(member.getJoindate());
			pstmt.setDate(4, (Date) date);
			pstmt.setString(5, member.getGrade());
			pstmt.setString(6, member.getCity());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
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
				member.setJoindate(rs.getString("joindate"));
				member.setGrade(rs.getString("grade"));
				member.setCity(rs.getString("city"));
				list.add(member);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
