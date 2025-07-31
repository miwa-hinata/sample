package q01_basic.question05;

public class Member extends AbstMember {
	
	int id;
	String password;
	int age;
	int rank;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
		this.id=id;
		this.password=password;
		this.age=age;
		this.rank=rank;
		this.name=name;
	}
	
	@Override
	public void buyItem(){
		System.out.println(name+"purchased the item at 50% off  ");
	}
	
	@Override
	public void showMember() {
		System.out.println("***MEMBER DATA***");
		System.out.println("id:"+id);
		System.out.println("password:"+password);
		System.out.println("name:"+name);
		System.out.println("age:"+age);
		System.out.println("rank:"+rank);
		System.out.println("***************** ");
		
	}
	
	

} 
