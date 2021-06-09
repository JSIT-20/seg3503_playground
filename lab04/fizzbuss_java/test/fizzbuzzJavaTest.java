import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

import org.junit.jupiter.api.Test;

class fizzbuzzJavaTest{

  @Test
  void fizzbuzzTest1(){
    fizzbuzz_java fizz = new fizzbuzz_java();
    assertEquals("1", fizz.fizzbuzz(1));
  }

  @Test
  void fizzbuzzTest2(){
    fizzbuzz_java fizz = new fizzbuzz_java();
    assertEquals("2", fizz.fizzbuzz(2));
  }

  @Test
  void fizzbuzzTest3(){
    fizzbuzz_java fizz = new fizzbuzz_java();
    assertEquals("3", fizz.fizzbuzz(3));
  }

}
