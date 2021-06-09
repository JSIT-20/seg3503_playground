class fizzbuzz_java{

  public static String fizzbuzz(int n){

    if(n % 3 == 0 && n % 5 == 0){
      return "fizzbuzz";
    }

    if(n % 3 == 0){
      return "fizz";
    }

    else if(n % 5 == 0){
      return "buzz";
    }

    else{
      return Integer.toString(n);
    }
  }

}
