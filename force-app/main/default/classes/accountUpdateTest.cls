@isTest
public class accountUpdateTest {
    @testSetup
    public static void methodtestTest(){
      Account acc=new account(Name='Deneme');
        insert acc;   
    }
    @isTest
    //account olusturma testi
    public static void updateDescriptionTest(){
        
        Account acc=new account(Name='Deneme');
        insert acc;
        accountUpdate.updateDescription(acc);
        System.assertEquals('Update', acc.Description);
    }
    @isTest
    //yukarida olusturdugumuz 
    public static void updateDescriptionTest2(){
        
        Account acc1=[Select id from Account limit 1];
      
        accountUpdate.updateDescription(acc1);
        System.assertEquals('Update', acc1.Description);
    }


}