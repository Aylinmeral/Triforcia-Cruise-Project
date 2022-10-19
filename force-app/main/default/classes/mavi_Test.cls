@isTest
public class mavi_Test {
    @isTest
    public static void  sum_Test(){
        
        mavi testhesap=New mavi();
        Integer testresult = testhesap.sum(5,7);
        System.assertEquals(12,testresult,'not true');
    }
@isTest
    public static void  sub_Test(){
        
        mavi testhesap=New mavi();
        Integer testresult = testhesap.sub(10,7);
        System.assertEquals(3,testresult,'not true');
    }
@isTest
    public static void  mul_Test(){
        
        mavi testhesap=New mavi();
        Integer testresult = testhesap.mul(5,3);
        System.assertEquals(15,testresult,'not true');
    }
   @isTest
    public static void  div_Test(){
        
        mavi testhesap=New mavi();
        Decimal testresult = testhesap.div(10,5);
        System.assertEquals(2,testresult,'not true');
    } 
}