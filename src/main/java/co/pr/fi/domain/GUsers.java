package co.pr.fi.domain;

import java.sql.Date;

//회원 
public class GUsers {

	// 유저키값
	private int userKey;

	private int logintype;

	// 유저아이디
	private String userId;

	// 비밀번호
	private String userPassword;

	// 프로필사진_file
	private String userImageFile;

	// 프로필사진_origin
	private String userImageOrigin;

	// 유저연령대
	private int userAge;

	// 유저지역
	private int userLocation;

	
	private String locationName;
	
	// 성별
	private String gender;

	// 이메일
	private String userEmail;

	// 가입날짜
	private Date userJoinDate;

	// 관리자여부
	private String userOptionAdmin;

	// 모임초대여부
	private String userOptionGroup;

	// 상태
	private int userStatus;


	private Date userStatusCode;

	
	
	public String getLocationName() {
		return locationName;
	}

	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}

	public int getUserKey() {
		return userKey;
	}

	public void setUserKey(int userKey) {
		this.userKey = userKey;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserImageFile() {
		return userImageFile;
	}

	public void setUserImageFile(String userImageFile) {
		this.userImageFile = userImageFile;
	}

	public String getUserImageOrigin() {
		return userImageOrigin;
	}

	public void setUserImageOrigin(String userImageOrigin) {
		this.userImageOrigin = userImageOrigin;
	}

	public int getUserAge() {
		return userAge;
	}

	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}

	public int getUserLocation() {
		return userLocation;
	}

	public void setUserLocation(int userLocation) {
		this.userLocation = userLocation;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Date getUserJoinDate() {
		return userJoinDate;
	}

	public void setUserJoinDate(Date userJoinDate) {
		this.userJoinDate = userJoinDate;
	}

	public String getUserOptionAdmin() {
		return userOptionAdmin;
	}

	public void setUserOptionAdmin(String userOptionAdmin) {
		this.userOptionAdmin = userOptionAdmin;
	}

	public String getUserOptionGroup() {
		return userOptionGroup;
	}

	public void setUserOptionGroup(String userOptionGroup) {
		this.userOptionGroup = userOptionGroup;
	}

	public int getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}

	

	public Date getUserStatusCode() {
		return userStatusCode;
	}

	public void setUserStatusCode(Date userStatusCode) {
		this.userStatusCode = userStatusCode;
	}

	public int getLogintype() {
		return logintype;
	}

	public void setLogintype(int logintype) {
		this.logintype = logintype;
	}

	// GUsers 모델 복사
	public void CopyData(GUsers param) {
		this.userKey = param.getUserKey();
		this.userId = param.getUserId();
		this.userPassword = param.getUserPassword();
		this.userImageFile = param.getUserImageFile();
		this.userImageOrigin = param.getUserImageOrigin();
		this.userAge = param.getUserAge();
		this.userLocation = param.getUserLocation();
		this.gender = param.getGender();
		this.userEmail = param.getUserEmail();
		this.logintype = param.getLogintype();
		this.userJoinDate = param.getUserJoinDate();
		this.userOptionAdmin = param.getUserOptionAdmin();
		this.userOptionGroup = param.getUserOptionGroup();
		this.userStatus = param.getUserStatus();
		this.userStatusCode = param.getUserStatusCode();
		this.locationName = param.getLocationName();
	}
}
