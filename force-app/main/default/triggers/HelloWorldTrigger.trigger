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
trigger HelloWorldTrigger on Account (before insert, after insert, after delete) {
	System.debug('Hello World!');

	if (Trigger.isInsert) {
        if (Trigger.isBefore) {
            // Process before insert
			for(Account a : Trigger.New) {
				a.Description = 'New description';
			}   
        } else if (Trigger.isAfter) {
            // Process after insert
        }        
    }
    else if (Trigger.isDelete) {
        // Process after delete
    }
}