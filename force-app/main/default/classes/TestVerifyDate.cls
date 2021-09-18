/**
 * @description       : 
 * @author            : sr.Oh
 * @group             : 
 * @last modified on  : 06-30-2021
 * @last modified by  : sr.Oh
 * Modifications Log 
 * Ver   Date         Author   Modification
 * 1.0   06-30-2021   sr.Oh   Initial Version
**/
@isTest
public with sharing class TestVerifyDate {
    public TestVerifyDate() {

    }

    @isTest
    private static void runTest(){

        Test.startTest();

        Date date1 = Date.today();
        Date date2 = Date.newInstance(2021, 06, 29);
        VerifyDate.CheckDates(date1, date2);

        date2 = date2.addDays(30);
        VerifyDate.CheckDates(date1, date2);

        date2 = date2.addDays(-31);
        VerifyDate.CheckDates(date1, date2);

        Test.stopTest();

    }
}