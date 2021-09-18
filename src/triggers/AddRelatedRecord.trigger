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
trigger AddRelatedRecord on Account (before insert, before update, after insert, after update, before delete) {
	
    if(Trigger.isInsert || Trigger.isUpdate){
        for(Account objAcct : Trigger.new){
            if(objAcct.Rating == null || objAcct.Rating == ''){
                objAcct.Rating = 'Cold';
            } 

            if(Trigger.isUpdate){
                if(Trigger.oldMap.get(objAcct.Id).Rating == 'Hot' && Trigger.newMap.get(objAcct.Id).Rating != 'Hot'){
                    objAcct.addError('Hot에서 변경할 수 없습니다');
                }
            }
        }
    } else if(Trigger.isDelete){
        for(Account objAcct : Trigger.old){
            if(objAcct.Rating == 'Hot'){
                objAcct.addError('Hot일 경우, 삭제할 수 없습니다.');
            }
        }
    }
}