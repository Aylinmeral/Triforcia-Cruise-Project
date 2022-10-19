/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-20-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class accountRetrieveLWC {
    public accountRetrieveLWC() {
      // constructor
    }
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
      List<Account> multiAcc = new List<Account>();
      try {
        multiAcc = [
          SELECT Id, Name, Phone, Industry, CreatedDate
          FROM Account
          ORDER BY CreatedDate
          LIMIT 10
        ];
      } catch (QueryException e) {
        throw new AuraHandledException(e.getMessage());
      }
      return multiAcc;
    }
    @AuraEnabled(cacheable=true)
    public static String createAccount(Account singleAcc) {
      try {
        insert singleAcc;
      } catch (DmlException e) {
        throw new AuraHandledException(e.getMessage());
      }
      return singleAcc.id;
    }
  }