/**
 * HackerRank/Algorithms/Warmup
 * Problem Name	: Simple Array Sum
 * File Name	: SimpleArraySum.java
 *
 * @author Vikram Apilla
 * @version 1.0 11/01/16
 */

import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class SimpleArraySum {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int sum = 0;
        int arr[] = new int[n];
        for(int arr_i = 0; arr_i < n; arr_i++){
            arr[arr_i] = in.nextInt();
            sum += arr[arr_i]; // Sum each element in the array
        }
        in.close();
        System.out.println(sum); // Display the sum of the elements in the array
    }
}
