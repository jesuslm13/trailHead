/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-18-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   06-18-2021   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
@isTest
public with sharing class ContactTrigger_Test {
    public ContactTrigger_Test() {    }

    @isTest
    public static void testUnit(){
        Test.startTest();

        Account acct = new Account();
        acct.Name = 'Test 주식회사';
        acct.Description = 'Test class 생성';
        insert acct;

        Contact c = new Contact();
        c.LastName = 'Test class 생성';
        c.AccountId = acct.Id;

        insert c;
        Test.stopTest();
    }
}