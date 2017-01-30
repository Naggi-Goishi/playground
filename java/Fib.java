public class Fib {
  public static void main(String[] args) {
    long start = System.nanoTime();
      int result = fib(40);
    long end = System.nanoTime();
    System.out.println(((end - start)/ 1000000000.0));
    System.out.println(result);
  }

  static int fib(int n){
    return n < 2 ? 1 : fib(n-1) + fib(n-2);
  }

}
