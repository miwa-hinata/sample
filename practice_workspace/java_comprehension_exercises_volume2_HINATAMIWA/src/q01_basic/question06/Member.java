package q01_basic.question06;

public abstract class Member extends AbstMember {
	
	private int id; 
	private String password;  
	private int age; 
	private int rank;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPasswor() {
		return password;
	}
	public void setPasswor(String passwor) {
		this.password = passwor;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}  
	
	public Member() {
		
	}
	
	public Member(int id,String password,String name,int age,int rank) {
		
	}
	
	@Override
	public void buyItem() {
	}
	
	@Override
	public void showMember() {
	}

}
