import java.util.*;

class Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int a = sc.nextInt();
		int b = sc.nextInt();
		int h = sc.nextInt();
		int m = sc.nextInt();
		
		double lo = 6.0 * h;
		double sh = 0.5 * m;
		
		System.out.println(lo);
		System.out.println(a*a+b*b+-2*a*b*Math.cos(sh - lo));
		
	}
}