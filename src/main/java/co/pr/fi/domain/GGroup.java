package co.pr.fi.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

//紐⑥엫 
public class GGroup {

	// 紐⑥엫�궎媛�
	private int groupKey;

	// 紐⑥엫�씠由�
	private String groupName;

	// 紐⑥엫�옣�궎媛�
	private int userKey;

	// �뿰�졊���궎媛�
	private int ageKey;

	// 紐⑥엫吏��뿭�궎媛�
	private int whereKey;

	// 紐⑥엫移댄뀒怨좊━
	private int categoryKey;

	// 紐⑥엫�냼媛�
	private String groupInfo;

	// ���몴�궗吏�_file
	private String groupDFile;

	// ���몴�궗吏�_origin
	private String groupIdOrigin;

	// 而ㅻ쾭�궗吏�_file
	private String groupCFile;

	// 而ㅻ쾭�궗吏�_origin
	private String groupCOrigin;

	// 紐⑥엫怨듦컻�뿬遺�
	private String groupPrivate;

	// 紐⑥엫���엯
	private String groupType; // y : �썝�뜲�씠 n : �씪諛�

	// 紐⑥엫 �꽕由쎌씪,,
	private Date groupDate;

	// 紐⑥엫 �긽�깭
	private int groupstatus; // 0 : �씪諛� 1 : �듅�씤�삁�젙

	// 紐⑥엫 �쉶�썝�닔(議곗씤)
	private int memberCount;

	// 紐⑥엫 移댄뀒怨좊━ �씠由�(議곗씤)
	private String categoryName;

	// 紐⑥엫 吏��뿭 �씠由�(議곗씤)
	private String locationName;

	private MultipartFile groupMainImgUpload;
	private MultipartFile groupImgUpload;

	public MultipartFile getGroupMainImgUpload() {
		return groupMainImgUpload;
	}

	public void setGroupMainImgUpload(MultipartFile groupMainImgUpload) {
		this.groupMainImgUpload = groupMainImgUpload;
	}

	public MultipartFile getGroupImgUpload() {
		return groupImgUpload;
	}

	public void setGroupImgUpload(MultipartFile groupImgUpload) {
		this.groupImgUpload = groupImgUpload;
	}

	public String getLocationName() {
		return locationName;
	}

	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}

	public int getMemberCount() {
		return memberCount;
	}

	public void setMemberCount(int memberCount) {
		this.memberCount = memberCount;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public int getGroupstatus() {
		return groupstatus;
	}

	public void setGroupstatus(int groupstatus) {
		this.groupstatus = groupstatus;
	}

	public int getGroupKey() {
		return groupKey;
	}

	public void setGroupKey(int groupKey) {
		this.groupKey = groupKey;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public int getUserKey() {
		return userKey;
	}

	public void setUserKey(int userKey) {
		this.userKey = userKey;
	}

	public int getAgeKey() {
		return ageKey;
	}

	public void setAgeKey(int ageKey) {
		this.ageKey = ageKey;
	}

	public int getWhereKey() {
		return whereKey;
	}

	public void setWhereKey(int whereKey) {
		this.whereKey = whereKey;
	}

	public int getCategoryKey() {
		return categoryKey;
	}

	public void setCategoryKey(int categoryKey) {
		this.categoryKey = categoryKey;
	}

	public String getGroupInfo() {
		return groupInfo;
	}

	public void setGroupInfo(String groupInfo) {
		this.groupInfo = groupInfo;
	}

	public String getGroupDFile() {
		return groupDFile;
	}

	public void setGroupDFile(String groupDFile) {
		this.groupDFile = groupDFile;
	}

	public String getGroupIdOrigin() {
		return groupIdOrigin;
	}

	public void setGroupIdOrigin(String groupIdOrigin) {
		this.groupIdOrigin = groupIdOrigin;
	}

	public String getGroupCFile() {
		return groupCFile;
	}

	public void setGroupCFile(String groupCFile) {
		this.groupCFile = groupCFile;
	}

	public String getGroupCOrigin() {
		return groupCOrigin;
	}

	public void setGroupCOrigin(String groupCOrigin) {
		this.groupCOrigin = groupCOrigin;
	}

	public String getGroupPrivate() {
		return groupPrivate;
	}

	public void setGroupPrivate(String groupPrivate) {
		this.groupPrivate = groupPrivate;
	}

	public String getGroupType() {
		return groupType;
	}

	public void setGroupType(String groupType) {
		this.groupType = groupType;
	}

	public Date getGroupDate() {
		return groupDate;
	}

	public void setGroupDate(Date groupDate) {
		this.groupDate = groupDate;
	}

	// GGroup 紐⑤뜽 蹂듭궗
	public void CopyData(GGroup param) {
		this.groupKey = param.getGroupKey();
		this.groupName = param.getGroupName();
		this.userKey = param.getUserKey();
		this.ageKey = param.getAgeKey();
		this.whereKey = param.getWhereKey();
		this.categoryKey = param.getCategoryKey();
		this.groupInfo = param.getGroupInfo();
		this.groupDFile = param.getGroupDFile();
		this.groupIdOrigin = param.getGroupIdOrigin();
		this.groupCFile = param.getGroupCFile();
		this.groupCOrigin = param.getGroupCOrigin();
		this.groupPrivate = param.getGroupPrivate();
		this.groupType = param.getGroupType();
		this.groupDate = param.getGroupDate();
		this.groupstatus = param.getGroupstatus();
	}
}