@isTest
public class createAccountTest {
    
    @isTest
    public static void accountMethodTest(){
        Test.startTest();
      createAccount.accountMethod();
        System.assertEquals(3,Limits.getDmlStatements(), 'not true');
        test.stopTest();
        System.debug(Limits.getDmlStatements());
    }

}