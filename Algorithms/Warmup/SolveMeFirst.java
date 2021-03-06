/**
 * HackerRank/Algorithms/Warmup
 * Problem Name	: Solve Me First
 * File Name	: SolveMeFirst.java
 *
 * @author Vikram Apilla
 * @version 1.0 11/01/16
 */
 
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class SolveMeFirst {


   static int solveMeFirst(int a, int b) {
      return a + b; // Returns the sum of a & b
   }

   
 public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int a;
        a = in.nextInt();
        int b;
        b = in.nextInt();
        int sum;
        sum = solveMeFirst(a, b);
        in.close();
        System.out.println(sum);
   }
}
