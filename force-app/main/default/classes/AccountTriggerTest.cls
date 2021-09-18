/**
 * @description       : 
 * @author            : jesuslm13@naver.com
 * @group             : 
 * @last modified on  : 2021-09-13
 * @last modified by  : jesuslm13@naver.com
**/
@isTest
public with sharing class AccountTriggerTest {
    public AccountTriggerTest() {}

    @isTest
    static void doTest(){

        List<Account> listAccount = new List<Account>();

        for(Integer i=0; i<200; i++){
            Account acct = new Account();
            acct.Name = 'Test0913_1531_' + i;
            acct.BillingState = 'CA';

            listAccount.add(acct);
        }

        Test.startTest();
        if(!listAccount.isEmpty()){
            insert listAccount;
        }
        Test.stopTest();
        
    }
}