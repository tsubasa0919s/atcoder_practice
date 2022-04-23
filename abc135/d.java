import java.util.*;

class Main {
	public static void main(String[] args) {
		static int mod = (int)10e9+7;
		
		Scanner sc = new Scanner(System.in);
		String s = sc.next();
		
		int dp[] = new int[13];
		
		int n = s.length();
		
		int mul = 1;
		dp[0] = 1;
		for(int i = n - 1; i >= 0 ; i--) {
			int nextDP[] = new int[13];
			if(s.charAt(i) == '?') {
				for (int k = 0; k < 10; k++) {
					for (int j = 0; j < 13; j++) {
						nextDP[(k * mul + j) % 13] += dp[j];
						nextDP[(k * mul + j) % 13] %= mod;
					}
				}
			} else {
				for (int k = 0; k < 10; k++) {
					for (int j = 0; j < 13; j++) {
						nextDP[(k * mul + j) % 13] += dp[j];
						nextDP[(k * mul + j) % 13] %= mod;
					}
				}
			}
		}
		
		System.out.println("NG");
	}
}