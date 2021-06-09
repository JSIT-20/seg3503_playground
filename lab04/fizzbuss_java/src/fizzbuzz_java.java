class fizzbuzz_java{

  public static String fizzbuzz(int n){
    if(n == 1 || n == 2 || n == 4){
      return Integer.toString(n);
    }
    else if(n % 3 == 0){
      return "fizz";
    }
    return "";
  }

}
