/**
 * HackerRank/Algorithms/Warmup
 * Problem Name	: Diagonal Difference
 * File Name	: DiagonalDifference.java
 *
 * @author Vikram Apilla
 * @version 1.0 11/01/16
 */

import java.util.Scanner;

public class DiagonalDifference {
	
	public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int a[][] = new int[n][n];
        int lsum = 0, rsum = 0; 
        for(int i = 0; i < n; i++){
            for(int j = 0; j < n; j++){
                a[i][j] = in.nextInt();
                if((i - j) == 0){
                    lsum += a[i][j]; // Left Diagonal Sum
                }
                if((i + j) == n - 1){
                    rsum += a[i][j]; // Right Diagonal Sum
                }
            }
        }
        in.close();
        System.out.print(Math.abs(rsum - lsum)); // Display the difference of the diagonals
	} 
}