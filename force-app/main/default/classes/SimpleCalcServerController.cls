/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-05-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class SimpleCalcServerController {
    public SimpleCalcServerController() {

    }
    @AuraEnabled
    public static Decimal sumServerController(Decimal number1, Decimal number2){
        return number1+number2;
    }
    @AuraEnabled
    public static Decimal subServerController(Decimal number1, Decimal number2){
        return number1-number2;
    }
    @AuraEnabled
    public static Decimal mulServerController(Decimal number1, Decimal number2){
        return number1*number2;
    }
    @AuraEnabled
    public static Decimal divServerController(Decimal number1, Decimal number2){
        return number1/number2;
    }
}