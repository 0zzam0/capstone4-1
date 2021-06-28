package User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Post.post;

//import org.apache.catalina.User;

import java.sql.DriverManager;


public class User_infoDAO {
	
	private Connection conn;
	
	private static String DB_URL = "jdbc:mariadb://172.30.1.8:3306/test?useUnicode=true&characterEncoding=utf8";



	private static String DB_USERNAME = "sys";

	private static String DB_PASSWORD = "sys";
	
	public User_infoDAO() {
		try {

			Class.forName("org.mariadb.jdbc.Driver");

			conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

			System.out.println("연결성공");



		} catch (ClassNotFoundException e) {

			// TODO Auto-generated catch block

			System.out.println("드라이브 로딩 실패");

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			System.out.println("DB 연결 실패");

		}
	}
	public int login(String userID, String userPW) {
		String sql = "SELECT PASSWORD FROM user_info WHERE ID = ?";
		try {
			PreparedStatement pstmt;
			ResultSet rs;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).contentEquals(userPW)) {
					return 1;
				}
				else return 0;
			}
			return -1;	//아이디x
		}catch(Exception e) {
			e.printStackTrace();
			return -2;		//데이터베이스 오류
		}
		
	}
	public int join(User_info user) {
	
		String sql = "INSERT INTO user_info(name,birth,mail,ID,PASSWORD) VALUES(?,?,?,?,?)";
		try {

			PreparedStatement pstmt;

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getBirth());
			pstmt.setString(3, user.getMail());
			pstmt.setString(4, user.getID());
			pstmt.setString(5, user.getPASSWARD());
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			return -1;		//데이터베이스 오류
		}
		
	}
	public User_info getProfile(String ID) {
		String sql = "SELECT name, birth, mail, ID, PASSWORD, follow, following FROM User_info WHERE ID = ?";
		User_info u = new User_info();
		System.out.println(ID);
		try {
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,ID);
			rs = pstmt.executeQuery();
			if(rs.next()) {	
				u.setName(rs.getString(1));
				System.out.println(u.getName());
				u.setBirth(rs.getString(2));
				u.setMail(rs.getString(3));
				u.setID(rs.getString(4));
				u.setPASSWARD(rs.getString(5));
				u.setFollow(rs.getInt(6));
				System.out.println(u.getFollow());
				u.setFollowing(rs.getInt(7));	
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println(u.getName());

		return u;
		
	}

}
