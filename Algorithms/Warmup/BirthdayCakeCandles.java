/**
 * HackerRank/Algorithms/Warmup
 * Problem Name	: Birthday Cake Candles
 * File Name	: BirthdayCakeCandles.java
 *
 * @author Vikram Apilla
 * @version 1.0 11/01/16
 */
 
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class BirthdayCakeCandles {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int height[] = new int[n];
        int max = 0,count = 0;
        for(int height_i = 0; height_i < n; height_i++){
            height[height_i] = in.nextInt();
            if(height[height_i]  > max){
                max = height[height_i] ;
                count = 1;
            }else if(height[height_i] == max){ // Check if the candle height is > max
                count++;
            }
        }
        System.out.println(count); // Print the count
    }
}
