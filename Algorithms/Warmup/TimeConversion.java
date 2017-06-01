/**
 * HackerRank/Algorithms/Warmup
 * Problem Name	: Time Conversion
 * File Name	: TimeConversion.java
 *
 * @author Vikram Apilla
 * @version 1.0 11/01/16
 */
 
import java.util.Scanner;

public class TimeConversion {
	
	public static void main(String args[]){
		Scanner in = new Scanner(System.in);
	
		String s = in.next();
		int a = Integer.parseInt(s.substring(0, 2));
		in.close();
		if((s.charAt(8) == 'P')&& (a != 12)){
			a = a + 12;
		}else if((s.charAt(8) == 'A') && (a == 12)){
			a = 0;
		}
		System.out.printf("%02d%s", a, s.substring(2,8));
	}
	
}
