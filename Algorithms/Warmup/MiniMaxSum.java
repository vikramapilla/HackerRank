/**
 * HackerRank/Algorithms/Warmup
 * Problem Name	: Mini-Max Sum
 * File Name	: MiniMaxSum.java
 *
 * @author Vikram Apilla
 * @version 1.0 11/01/16
 */
 
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class MiniMaxSum {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        long a[] = new long[5];
        long sum = 0;
        for(int i = 0; i < 5; i++){
            a[i] = scan.nextLong();
            sum += a[i];
        }
        
        a = sort(a); // Calling "sort" function
        System.out.println((sum - a[4]) + " " + (sum - a[0])); // Display Sum of Max and Min
    }
    
    static long[] sort(long[] a ){
		// Sort the array to find Max and Min
        for(int i = 0; i < 5;i++){
            for(int j = 0; j < 5 - i - 1; j++){
                if(a[j] > a[j+1]){
                    long temp = a[j];
                    a[j] = a[j+1];
                    a[j+1] = temp;
                }
            }
        }
        return a;
    }
}
