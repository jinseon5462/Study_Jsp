package db;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;

import common.FileVO;

public class FileDAO {
	public int insert(File file, String id) {
		int result = 0;
		if(file != null){
			try {
				Class.forName("org.mariadb.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mariadb://localhost:3306/greendb",
						"green01", 
						"1234"
						);
				Statement stmt = con.createStatement();
				String curTime = LocalDate.now() + " " + LocalTime.now().toString().substring(0, 8);
				//String query = String.format(
				//		"INSERT INTO webhard(fname, ftime, fsize, id) " +
				//				"VALUES ('%s', '%s', '%d', '%s')",
				//				file.getName(), curTime, (int)file.length(), id
				//		);
				String query2 = "INSERT INTO webhard(fname, ftime, fsize, id) "
								+ "VALUES (?, ?, ?, ?)";
				PreparedStatement pstmt = con.prepareStatement(query2);
				pstmt.setString(1, file.getName());
				pstmt.setString(2, curTime);
				pstmt.setInt(3, (int)file.length());
				pstmt.setString(4, id);
				result = pstmt.executeUpdate();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public String select(int num, String id) {
		String fname = "";
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mariadb://localhost:3306/greendb",
					"green01", 
					"1234"
					);
			String query = "SELECT * FROM webhard WHERE num = ? AND id = ?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);
			pstmt.setString(2, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			fname = rs.getString("fname");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return fname;
	}
	
	public int delete(int num, String id, File file) {
		int result = -1;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mariadb://localhost:3306/greendb",
					"green01", 
					"1234"
					);
			
			if(file != null){
				file.delete();
				// DB에서 파일정보를 삭제
				String query = "DELETE FROM webhard WHERE num = ? AND id = ?";
				PreparedStatement pstmt = con.prepareStatement(query);
				pstmt.setInt(1, num);
				pstmt.setString(2, id);
				result = pstmt.executeUpdate();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<FileVO> getMyList(String id){
		ArrayList<FileVO> list = new ArrayList<>();
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:maria://localhost:3306/greendb",
					"green01",
					"1234"
					);
			String query = "SELECT * FROM webhard WHERE id = ?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				FileVO file = new FileVO();
				file.setFname(rs.getString("fname"));
				file.setFtime(rs.getString("ftime"));
				file.setFsize(rs.getInt("fsize"));
				file.setId(rs.getString("id"));
				list.add(file);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
