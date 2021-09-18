/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-17-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   06-17-2021   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/

public class QuoteNewController {

    @AuraEnabled
    public static void saveQuote(Quote__c objQuote){

        System.debug(objQuote);

        Id recordId = objQuote.Id;

        Quote__c searchObjQuote = [
            SELECT
                Id, Account__c, Contact__c, ExpireDate__c, Name
            FROM Quote__c
            WHERE
            Id = :recordId
        ];

        if(searchObjQuote == null){
            insert objQuote;
        } else{
            update objQuote;
        }
    }

    @AuraEnabled
    public static Quote__c getInit(String strRecordId) {

        System.debug('Hi : ' + strRecordId);
        Quote__c ObjQuote;
        List<Quote__c> listObjQuote = new List<Quote__c>([
            SELECT
                Id, Account__c, Contact__c, ExpireDate__c, Name
            FROM Quote__c
            WHERE
            Id = :strRecordId
        ]);

        ObjQuote = listObjQuote.get(0);

        System.debug('Bye :: ' + objQuote);

        return objQuote;
    }
}