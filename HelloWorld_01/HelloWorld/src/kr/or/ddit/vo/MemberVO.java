package kr.or.ddit.vo;

// mymember테이블 사용 > 그 데이터를 담을 그릇이 MemberVO
/*
 * DB테이블에 있는 컬럼을 기준으로 데이터를 객체화할 클래스이다.
 * DB테이블의 '컬럼명'이 이 클래스의 '멤버변수'가 된다.
 * 
 * DB테이블의 컬럼과 클래스의 멤버변수를 매핑하는 역할을 수행한다.
 * 
 */
public class MemberVO {
	private String member_id;
	private String member_password;
	private String member_name;
	private int member_milleage;
	private int member_point;
	private int member_authority;
	private String member_address;
	private int member_state;
	private String member_phone;
	private String member_email;
<<<<<<< HEAD
	private String member_birthday;
	
	
	public String getMember_birthday() {
		return member_birthday;
	}
	public void setMember_birthday(String member_birthday) {
		this.member_birthday = member_birthday;
	}

	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}

	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public int getMember_milleage() {
		return member_milleage;
	}
=======
	
	public String getMember_id() {
		return member_id;
	}



	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}



	public String getMember_password() {
		return member_password;
	}



	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}



	public String getMember_name() {
		return member_name;
	}



	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}



	public int getMember_milleage() {
		return member_milleage;
	}



>>>>>>> f3247130062a7fb3a802378b82c82b6293ff62f2
	public void setMember_milleage(int member_milleage) {
		this.member_milleage = member_milleage;
	}

<<<<<<< HEAD
	public int getMember_point() {
		return member_point;
	}
	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}

	public int getMember_authority() {
		return member_authority;
	}
	public void setMember_authority(int member_authority) {
		this.member_authority = member_authority;
	}

	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}

	public int getMember_state() {
		return member_state;
	}
	public void setMember_state(int member_state) {
		this.member_state = member_state;
	}

	public String getMember_phone() {
		return member_phone;
	}
=======


	public int getMember_point() {
		return member_point;
	}



	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}



	public int getMember_authority() {
		return member_authority;
	}



	public void setMember_authority(int member_authority) {
		this.member_authority = member_authority;
	}



	public String getMember_address() {
		return member_address;
	}



	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}



	public int getMember_state() {
		return member_state;
	}



	public void setMember_state(int member_state) {
		this.member_state = member_state;
	}



	public String getMember_phone() {
		return member_phone;
	}



>>>>>>> f3247130062a7fb3a802378b82c82b6293ff62f2
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

<<<<<<< HEAD
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
=======


	public String getMember_email() {
		return member_email;
	}



	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}



>>>>>>> f3247130062a7fb3a802378b82c82b6293ff62f2
	private static final String KEY = "a1b2c3d4e5f6g7h8";
	
	// 만약에 생성자를 만들었을 때 반드시 기본 생성자도 같이 만들어준다.
	// 테이블 많으면 테이블마다 다 VO 있어야 함
	// 그리고 join을 할 때마다 그릇을 만들어야 할 수도 있음

}
