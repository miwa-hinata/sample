package q01_basic.question04;

public class SystemMain04 {

	public static void main(String[] args) {

		Member[] members = new Member[2];
		//TODO ここから実装する
		Member member1=new Member(1,"Passw0rd","Miura Manabu",28,2);
		Member member2=new Member(2,"aaaAAA",":Sato Kensuke",43,1);
		
		members[0]=member1;
		members[1]=member2;
		
		MemberManager manager = new MemberManager();
		manager.showAllMembers(members);

	}

}
