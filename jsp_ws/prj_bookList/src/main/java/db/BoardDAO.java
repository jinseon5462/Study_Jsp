package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.BoardVO;

public class BoardDAO {
	
	public ArrayList<BoardVO> selectAll(){
		ArrayList<BoardVO> list = new ArrayList<>();
		Connection conn = DBcon.getConnection();
		String query = "SELECT * FROM boardlist";
		int count = 0;
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardVO board = new BoardVO();
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setId(rs.getString("id"));
				board.setPostdate(rs.getDate("postdate"));
				board.setVisitcount(rs.getInt("visitcount"));
				board.setName(rs.getString("name"));
				count++;
				board.setCount(count);
				list.add(board);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<BoardVO> selectPageList(int page) {
		ArrayList<BoardVO> list = new ArrayList<>();
		Connection conn = DBcon.getConnection();
		String query = "SELECT * FROM boardlist LIMIT ?, 10";
		int page2 = 10 * (page - 1);
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, page2);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVO board = new BoardVO();
				board.setNum(rs.getInt("num"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setId(rs.getString("id"));
				board.setPostdate(rs.getDate("postdate"));
				board.setVisitcount(rs.getInt("visitcount"));
				board.setName(rs.getString("name"));
				list.add(board);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int pageCount() {
		int listCount = 0;
		Connection conn = DBcon.getConnection();
		String query = "SELECT COUNT(*) cnt FROM boardlist";
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			listCount = rs.getInt("cnt") / 10;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return listCount;
	}

}
