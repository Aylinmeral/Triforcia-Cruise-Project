@isTest
      private class AccountSalaryHelperTest {
     @TestSetup static void setup(){
      Account acc = new Account();
        acc.Name = 'Test';
         insert acc;
       Account_Salary__c as1 = new Account_Salary__c();
        as1.Name='as1';
        as1.Account__c = acc.Id;
        as1.Salary__c = 500;
      insert as1;
       Account_Salary__c as2 = new Account_Salary__c();
        as2.Name = 'as2';
        as2.Account__c = acc.Id;
        as2.Salary__c = 700;
      insert as2;
}
     @isTest static void testInsertAccountSalary(){
     Account acc = [Select Id, Max_Salary__c, Total_Salary__c from Account][0];
     Test.startTest();
      Account_Salary__c as3 = new Account_Salary__c();
        as3.Name = 'as3';
        as3.Account__c = acc.Id;
        as3.Salary__c = 300;
     insert as3;
    Test.stopTest();
       Account accAfter = [Select Id, Max_Salary__c, Total_Salary__c from Account][0];
      System.assertEquals(accAfter.Max_Salary__c, 700);
      System.assertEquals(accAfter.Total_Salary__c, 1500);
}
       @isTest static void testUpdateAccountSalary(){
          Account_Salary__c accSalary = [Select Id, Salary__c from
         Account_Salary__c where Name='as2'][0];
         Test.startTest();
          accSalary.Salary__c = 800;
        update accSalary;
        Test.stopTest();
       Account acc = [Select Id, Max_Salary__c, Total_Salary__c from Account][0];
           System.assertEquals(acc.Max_Salary__c, 800);
      System.assertEquals(acc.Total_Salary__c, 1300);
}
       @isTest static void testDeleteAccountSalary(){
        Test.startTest();
      delete [Select Id from Account_Salary__c where
          Name='as2'][0];
          Test.stopTest();
         Account acc = [Select Id, Max_Salary__c, Total_Salary__c from
         Account][0];
         System.assertEquals(acc.Max_Salary__c, 500);
         System.assertEquals(acc.Total_Salary__c, 500);
}
}