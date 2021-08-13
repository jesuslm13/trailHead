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
public with sharing class TestRestrictContactByName {

    @isTest
    private static void doTest(){

        Test.startTest();

        Contact c = new Contact(LastName = 'INVALIDNAME');
        Database.SaveResult result = Database.insert(c);

        if(!result.isSuccess()){
            Database.Error [] errors = result.getErrors();

            for(Database.Error error : errors){
                System.debug('[Error] :: ' + error.getStatusCode() + ' // ' + error.getFields() + ' // ' + error.getFields());
            }
        }

        Test.stopTest();
    }
}