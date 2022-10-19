@istest
public class sporTest {

    @isTest
    public static void fullNameTest(){
        String result = spor.fullName('Ali', 'Kaya');
        System.assertEquals('Ali Kaya', result);
    }
}