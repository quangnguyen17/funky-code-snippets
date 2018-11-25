//
// Code Snippets
// Recursion Practices in Java
//
// Created by Quang Nguyen.
//

class Jelly {

  public static int factorialOf(int value) {
    return (value == 0) ? 1 : (value * factorialOf(value - 1));
  }

  public static int fibOf(int num) {
    return (num <= 1) ? num : (fibOf(num - 1) + fibOf(num - 2));
  }

  public static void main(String[] args) {
    System.out.println(factorialOf(6));
    System.out.println(fibOf(6));
  }

}