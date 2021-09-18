/**
 * @description       : 
 * @author            : jesuslm13@naver.com
 * @group             : 
 * @last modified on  : 2021-09-13
 * @last modified by  : jesuslm13@naver.com
**/
public with sharing class AccountUtils {
    public AccountUtils() {}

    public static List<Account> accountsByState(String BillingState){
        
        List<Account> listAccount = new List<Account>([
            SELECT
            Id, Name
            FROM Account
            WHERE
            BillingState =: BillingState
        ]);

        return listAccount;
    }
}