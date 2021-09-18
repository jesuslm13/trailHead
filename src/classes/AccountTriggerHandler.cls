/**
 * @description       : 
 * @author            : jesuslm13@naver.com
 * @group             : 
 * @last modified on  : 2021-09-13
 * @last modified by  : jesuslm13@naver.com
**/
public with sharing class AccountTriggerHandler {

    public static void CreateAccounts(List<Account> listAccount){
        
        for(Account obj : listAccount){
            if(obj.ShippingState != obj.BillingState){
                obj.ShippingState = obj.BillingState;
            }
        }
    }
}