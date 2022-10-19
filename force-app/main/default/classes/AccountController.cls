/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-21-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AccountController {  
    // with sharing : sharing rule RESPECT.
    // without sharing : DO NOT RESPECT SHARING RULE.
    // inherited sharing

    
    public AccountController() {
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> retrive(){
        List<Account> retrievedmultiAcc= new List<Account>();
        try {
            retrievedmultiAcc = AccountHelper.retriveaccount();
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        return retrievedmultiAcc;
    }
}