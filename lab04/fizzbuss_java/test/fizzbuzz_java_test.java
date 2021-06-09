import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

import org.junit.jupiter.api.Test;

class fizzbuzz_java_test{

  @Test
  public void fizzbuzzTest1(){
    String fizz = new fizzbuzz_java();
    assertEquals("1", fizz.fizzbuzz(1));
  }

}
