public class auraMathServerController {
    
    @auraEnabled
    public static decimal SumServerController(Decimal number1,Decimal number2){
        system.debug('number1 : '+number1);
        system.debug('number2 : '+number2);
        
        return number1+number2;
        
    }
}