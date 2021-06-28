package User;

public class User_info {
	private String name;
	private String birth;
	private String mail;
	private String ID;
	private String PASSWARD;

	private int follow;
	private int following;

	public int getFollow() {
		return follow;
	}
	public void setFollow(int follow) {
		this.follow = follow;
	}
	public int getFollowing() {
		return following;
	}
	public void setFollowing(int following) {
		this.following = following;
	}

	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPASSWARD() {
		return PASSWARD;
	}
	public void setPASSWARD(String pASSWARD) {
		PASSWARD = pASSWARD;
	}
	
	
	
}
