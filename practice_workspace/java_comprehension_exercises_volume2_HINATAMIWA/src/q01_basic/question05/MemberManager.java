package q01_basic.question05;

public class MemberManager {
	
	MemberManager() {
		
	}
	
	public static void showAllMembers(AbstMember[]members) {
		for(AbstMember am:members) {
			am.showMember();
		}
		
	}

}
