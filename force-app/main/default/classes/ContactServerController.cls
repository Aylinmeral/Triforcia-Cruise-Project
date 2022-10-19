/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-06-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ContactServerController {
    public ContactServerController() {

    }
    @AuraEnabled
    public static string createServerController(Contact singleContact){
        try {
            insert singleContact;
        } catch (DmlException e) {
            throw new AuraHandledException(e.getMessage());
        }
        return singleContact.id;
    }
}