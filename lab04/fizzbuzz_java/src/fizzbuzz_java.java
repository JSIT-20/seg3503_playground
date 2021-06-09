class fizzbuzz_java{

  public static String fizzbuzz(int n){

    Boolean mod3 = n % 3 == 0;
    Boolean mod5 = n % 5 == 0;

    if(mod3 && mod5){
      return "fizzbuzz";
    }

    if(mod3){
      return "fizz";
    }

    else if(mod5){
      return "buzz";
    }

    else{
      return Integer.toString(n);
    }
  }

}
