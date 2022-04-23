import java.util.*;

class Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();
		int m = sc.nextInt();
		int x = sc.nextInt();
		
		int c[] = new int[n];
		int a[] = new int[n][m+1];
		
		for(int i = 0; i < n; i++) {
			a[m+1] = sc.nextInt();
			for(int j = 0; j < m; j++){
				a[i][j] = sc.nextInt();
			}	
		}
		
		
		
		
	}
}