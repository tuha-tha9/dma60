import java.util.Scanner;

public class Solution {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in).useDelimiter("\r\n");
        int i = scan.nextInt();

        // Write your code here.
        double d = scan.nextDouble();
        String s = scan.next();
        scan.close();
        System.out.println("String: " + s);
        System.out.println("Double: " + d);
        System.out.println("Int: " + i);
    }
}
// https://www.hackerrank.com/challenges/java-stdin-stdout/problem?isFullScreen=true  