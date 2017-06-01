/**
 * HackerRank/Algorithms/Warmup
 * Problem Name	: Compare the Triplets
 * File Name	: ComparetheTriplets.java
 *
 * @author Vikram Apilla
 * @version 1.0 11/01/16
 */
 
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class ComparetheTriplets {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int a0 = in.nextInt();
        int a1 = in.nextInt();
        int a2 = in.nextInt();
        int b0 = in.nextInt();
        int b1 = in.nextInt();
        int b2 = in.nextInt();
        
        int alice = 0, bob = 0;
		
		// Compare alice's and bob's first score
        if(a0 > b0){
            alice += 1;
        }else if(a0 < b0){
            bob += 1;
        }
		
		// Compare alice's and bob's second score
        if(a1 > b1){
            alice += 1;
        }else if(a1 < b1){
            bob += 1;
        }
		
		// Compare alice's and bob's third score
        if(a2 > b2){
            alice += 1;
        }else if(a2 < b2){
            bob += 1;
        }
        in.close();
		
		//Display alice's and bob's points
        System.out.print(alice + " " + bob);
    }
}

