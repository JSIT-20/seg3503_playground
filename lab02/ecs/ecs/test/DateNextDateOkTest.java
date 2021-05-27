import java.util.LinkedList;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;


@RunWith(Parameterized.class)
public class DateNextDateOkTest
{

  private int yearTest;

	private int monthTest;

	private int dayTest;

  private int yearEx;

  private int monthEx;

  private int dayEx;



  public DateNextDateOkTest(int yearTest, int monthTest, int dayTest, int yearEx, int monthEx, int dayEx){
    this.yearTest = yearTest;
    this.monthTest = monthTest;
    this.dayTest = dayTest;
    this.yearEx = yearEx;
    this.monthEx = monthEx;
    this.dayEx = dayEx;
  }

  @Parameters
  public static List<Integer[]> data(){
    List<Integer[]> params = new LinkedList<Integer[]>();
    params.add(new Integer[] {2020,5,3,2020,5,4});
    params.add(new Integer[] {1700,6,20,1700,6,21});
    params.add(new Integer[] {2005,4,15,2005,4,16});
    params.add(new Integer[] {1901,7,20,1901,7,21});
    params.add(new Integer[] {3456,3,27,3456,3,28});
    params.add(new Integer[] {1500,2,17,1500,2,18});
    params.add(new Integer[] {1700,6,29,1700,6,30});
    params.add(new Integer[] {1800,11,29,1800,11,30});
    params.add(new Integer[] {3453,1,29,3453,1,30});
    params.add(new Integer[] {444,2,29,444,3,01});
    params.add(new Integer[] {2005,4,30,2005,5,01});
    params.add(new Integer[] {3453,1,30,3453,1,31});
    params.add(new Integer[] {3456,3,30,3456,3,31});
    params.add(new Integer[] {1901,7,31,1901,8,01});
    params.add(new Integer[] {3453,1,31,3453,2,01});
    params.add(new Integer[] {3456,12,31,3457,1,01});
    return params;
  }

  @Test
  public void TestDateOk()
  {
    Date ActualDate = new Date(yearTest, monthTest, dayTest);
    Date ExpectedDate = new Date(yearEx, monthEx, dayEx);
    Assert.assertEquals(ExpectedDate, ActualDate.nextDate());
  }




}
