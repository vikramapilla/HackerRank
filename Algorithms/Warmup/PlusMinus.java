/**
 * HackerRank/Algorithms/Warmup
 * Problem Name	: Plus Minus
 * File Name	: PlusMinus.java
 *
 * @author Vikram Apilla
 * @version 1.0 11/01/16
 */
 
import java.util.Scanner;

public class PlusMinus {
	public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int num;
        double pf = 0, sf = 0, zf = 0;
        for(int i = 0; i < n; i++){
            num = in.nextInt();
            if(num > 0){
                pf++; // Positive numbers count
            }else if(num < 0){
                sf++; // Negative numbers count
            }else{
                zf++; // Zeroes count
            }
        }
        in.close();
        System.out.print((pf/n) + "\n" + (sf/n) + "\n" +  (zf/n)); // Display the result
    }
}
