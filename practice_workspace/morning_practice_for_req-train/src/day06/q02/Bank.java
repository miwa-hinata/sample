package day06.q02;

public class Bank {
	
	private String bankCode="000111";
	private String bankName="シェアード銀行";
	private Depositor depositor ;
	
	public Depositor getDepositor() {
		return depositor;
	}

	public void setDepositor(Depositor depositor) {
		this.depositor = depositor;
	}

	
	public void showData() {
		System.out.println("\n銀行情報を表示します");
		System.out.println("bankCord:"+ bankCode);
		System.out.println("bankName:"+bankName);
		
		depositor.showData();


}

	
}
