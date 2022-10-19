/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-21-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AccountHelper {
    public AccountHelper() {
    }
    public static List<Account> retriveaccount(){
        List<Account> multiAcc = New List<Account>();
        SObjectAccessDecision sd;
        try {
            multiAcc=[SELECT id,Name,Phone,Credit_Card__c,CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 20];
            sd = Security.stripInaccessible(AccessType.READABLE,multiAcc);
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return sd.getRecords();
    }
}