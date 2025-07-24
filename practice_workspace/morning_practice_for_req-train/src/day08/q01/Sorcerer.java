package day08.q01;

public class Sorcerer extends Magic {
	
	public Sorcerer(String name) {
		super(name);
	}
	
	@Override
	public void attack(int mp) {
		super.attack(mp);
		//double型からint型に入れるにはキャストが必要
		int addAttack= (int) (mp * 0.5);
		System.out.println("追加で"+addAttack+"のダメージを与えた。");
		
	}

}
