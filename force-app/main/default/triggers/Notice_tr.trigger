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
trigger Notice_tr on Notice__c (after insert) {

	List<Alert__e> listAlert = new List<Alert__e>();

	for(Notice__c objNotice : Trigger.new){
		listAlert.add(new Alert__e(RecordId__c = UserInfo.getUserId(), Title__c = objNotice.Subject__c, Contents__c = objNotice.Contents__c));
	}

	// Call method to publish events
	List<Database.SaveResult> results = EventBus.publish(listAlert);
	
	// Inspect publishing result for each event
	for (Database.SaveResult sr : results) {
		if (sr.isSuccess()) {
			System.debug('Successfully published event.');
		} else {
			for(Database.Error err : sr.getErrors()) {
				System.debug('Error returned: ' + err.getStatusCode() + ' - ' + err.getMessage());
			}
		}       
	}
}