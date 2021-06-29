/**
 * @description       : 
 * @author            : sr.Oh
 * @group             : 
 * @last modified on  : 06-28-2021
 * @last modified by  : sr.Oh
 * Modifications Log 
 * Ver   Date         Author   Modification
 * 1.0   06-28-2021   sr.Oh   Initial Version
**/
public with sharing class NewCaseListController {
    public NewCaseListController() {

    }

    public List<Case> getNewCases(){

        List<Case> newCases = new List<Case>([
            SELECT Id, CaseNumber
            FROM Case
            WHERE
            status = 'New'
        ]);

        return newCases;

    }    
}