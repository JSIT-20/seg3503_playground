import java.util.LinkedList;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;


@RunWith(Parameterized.class)
public class DateNextDateExceptionTest
{


  private int yearTest;

	private int monthTest;

	private int dayTest;

  private int yearEx;

  private int monthEx;

  private int dayEx;



  public DateNextDateExceptionTest(int yearTest, int monthTest, int dayTest){
    this.yearTest = yearTest;
    this.monthTest = monthTest;
    this.dayTest = dayTest;
  }

  @Parameters
  public static List<Integer[]> data(){
    List<Integer[]> params = new LinkedList<Integer[]>();
    params.add(new Integer[] {1500,02,31});
    params.add(new Integer[] {1500,02,29});
    params.add(new Integer[] {-1,10,20});
    params.add(new Integer[] {1458,15,12});
    params.add(new Integer[] {1975,6,-50});
    return params;
  }

  @Test
  public void TestDateOk()
  {
    Assert.assertThrows(IllegalArgumentException.class, () -> {
      new Date(yearTest, monthTest, dayTest);
    });
  }

}
