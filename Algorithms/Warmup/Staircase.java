/**
 * HackerRank/Algorithms/Warmup
 * Problem Name	: Staircase
 * File Name	: Staircase.java
 *
 * @author Vikram Apilla
 * @version 1.0 11/01/16
 */
 
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Staircase {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        for(int i = 0; i < n; i++){
            for(int js = 0; js < n - i - 1; js++){
                System.out.print(" "); // Print the spaces
            }
            for(int jk = 0; jk <= i; jk++){
                System.out.print("#"); // Print the character
            }  
            System.out.print("\n"); // Print new line
        }
		in.close();
    }
}
