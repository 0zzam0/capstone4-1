package Tag;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Post.postDAO;

public class TagDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private static String DB_URL = "jdbc:mariadb://172.30.1.8:3306/test?useUnicode=true&characterEncoding=utf8";



	private static String DB_USERNAME = "sys";

	private static String DB_PASSWORD = "sys";
	
	public TagDAO() {
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
	
	public int tagSave(Tag tag, int postID) {
		String Hashtag = tag.getHashtag();
		if(Hashtag == null) return -2;
		String[] arr = Hashtag.split("#"); 

		for(int i=1; i<arr.length; i++) {
			String sql = "INSERT INTO Tag VALUES(?,?,DEFAULT)";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, postID);
				pstmt.setString(2, arr[i]);
				pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("태그 insert 실패");
				return -1;		//데이터베이스 오류
			}
	
		}
		return 1;
	}
	
	public ArrayList<Tag> getTagList(int postId){
		String sql = "SELECT Hashtag FROM tag WHERE postId = ?";
		ArrayList<Tag> list = new ArrayList<Tag>();
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,postId);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Tag t = new Tag();
				t.setHashtag(rs.getString(1));
				list.add(t);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		return list;
	}
	
	
}
