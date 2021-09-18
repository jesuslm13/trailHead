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
trigger ExampleTrigger on contact (after insert, after delete) {
  if (Trigger.isInsert) {
    Integer recordCount = Trigger.New.size();
    // Call a utility method from another class
	
    new EmailManager().sendMail('jesuslm13@naver.com', 'Trailhead Trigger Tutorial', recordCount + ' contact(s) were inserted.');
  } else if (Trigger.isDelete) {
      // Process after delete
  }
}