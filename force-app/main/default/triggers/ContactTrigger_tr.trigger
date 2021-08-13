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
trigger ContactTrigger_tr on contact (before insert, before update) {

	Set<Id> setAcctId = new  Set<Id>();

//	이게 자동 deploy가 돼?

	for(Contact objContact : Trigger.new){
		setAcctId.add(objContact.AccountId);
	}

	Map<Id, Account> mapAcct = new Map<Id, Account>([
		select Id, Name
		from Account
		where id in :setAcctId
	]);
	
	if(Trigger.isInsert || Trigger.isUpdate){
		for(Contact objContact : Trigger.new){
			if(objContact.AccountId != null && mapAcct.containsKey(objContact.AccountId)){
				mapAcct.get(objContact.AccountId).Description = 'Description 자동입력';
			}
		}

		if(!mapAcct.isEmpty()){
			update mapAcct.values();
		}
	}
}