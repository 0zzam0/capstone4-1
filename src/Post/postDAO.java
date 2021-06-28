package Post;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import User.User_info;

public class postDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private static String DB_URL = "jdbc:mariadb://172.30.1.8:3306/test?useUnicode=true&characterEncoding=utf8";



	private static String DB_USERNAME = "sys";

	private static String DB_PASSWORD = "sys";
	
	public postDAO() {
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
	
	public int postSave(post post, String id) {
		
		String sql1 = "INSERT INTO post(postId, title, contents, date, ID) VALUES(DEFAULT,?,?,DEFAULT,?)";
		try {
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, post.getTitle());
			pstmt.setString(2, post.getContents());
			pstmt.setString(3, id);
			
			pstmt.executeUpdate();
			System.out.println("글 저장 성공");
			
		}catch(Exception e) {
			e.printStackTrace();
			return -1;		//데이터베이스 오류
		}
		
		int postId = 0;
		String sql2 = "SELECT LAST_INSERT_ID()";
		try {
			pstmt = conn.prepareStatement(sql2);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				postId = rs.getInt(1);
			}
			System.out.println("last insert "  + postId);
			return postId;
			
		}catch(Exception e) {
			e.printStackTrace();
			return -2;
		}
		
	}
	
	public int commi() {
		String sql2 = "COMMIT";
		try {
			pstmt = conn.prepareStatement(sql2);
			return pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
			return -1;		//데이터베이스 오류
		}
	}
	
	public ArrayList<post> getNewList(){
		String sql = "SELECT * FROM post WHERE available = 1 ORDER BY postId DESC";
		ArrayList<post> list = new ArrayList<post>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				post p = new post();
				p.setPostId(rs.getInt(1));
				p.setTitle(rs.getString(2));
				p.setContents(rs.getString(3));
				p.setCount_like(rs.getInt(4));
				p.setDate(rs.getString(5));
				p.setImg(rs.getString(6));
				p.setID(rs.getString(7));
				p.setAvailable(rs.getInt(8));
				list.add(p);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public ArrayList<post> getMyList(String ID){
		String sql = "SELECT * FROM post WHERE available = 1 AND ID = ? ORDER BY postId DESC";
		ArrayList<post> list = new ArrayList<post>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ID);
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				post p = new post();
				p.setPostId(rs.getInt(1));
				p.setTitle(rs.getString(2));
				p.setContents(rs.getString(3));
				p.setCount_like(rs.getInt(4));
				p.setDate(rs.getString(5));
				p.setImg(rs.getString(6));
				p.setID(rs.getString(7));
				p.setAvailable(rs.getInt(8));
				list.add(p);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public ArrayList<post> getHotList(){
		String sql = "SELECT * FROM post WHERE available = 1 ORDER BY count_like DESC";
		ArrayList<post> list = new ArrayList<post>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				post p = new post();
				p.setPostId(rs.getInt(1));
				p.setTitle(rs.getString(2));
				p.setContents(rs.getString(3));
				p.setCount_like(rs.getInt(4));
				p.setDate(rs.getString(5));
				p.setImg(rs.getString(6));
				p.setID(rs.getString(7));
				p.setAvailable(rs.getInt(8));
				list.add(p);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public ArrayList<post> getSearchList(String tag){
		String sql = "SELECT * FROM post,tag WHERE post.postId = tag.postId AND tag.Hashtag LIKE ";
		ArrayList<post> list = new ArrayList<post>();
		
		try {
			pstmt = conn.prepareStatement(sql+"'%"+tag+"%' ORDER BY post.count_like DESC");
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				post p = new post();
				p.setPostId(rs.getInt(1));
				p.setTitle(rs.getString(2));
				p.setContents(rs.getString(3));
				p.setCount_like(rs.getInt(4));
				p.setDate(rs.getString(5));
				p.setImg(rs.getString(6));
				p.setID(rs.getString(7));
				p.setAvailable(rs.getInt(8));
				list.add(p);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public int setThumbsUp(int postId) {
		
		String sql = "UPDATE post SET count_like = count_like + 1 WHERE postId = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  postId);
			rs = pstmt.executeQuery();
			System.out.println("thumbsup!");
			return 1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int getFollow(String ID) {
		String sql = "SELECT follow FROM User_info WHERE ID = ?";
		int follow =0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ID);
			rs = pstmt.executeQuery();
			if(rs.next()) {	
				follow = rs.getInt(1);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		return follow;
	}
}
