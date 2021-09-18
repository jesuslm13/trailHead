/**
 * @description       : 
 * @author            : jesuslm13@naver.com
 * @group             : 
 * @last modified on  : 2021-09-13
 * @last modified by  : jesuslm13@naver.com
**/
trigger AccountTrigger on Account (before insert) {

    if(Trigger.isBefore && Trigger.isInsert){
        AccountTriggerHandler.CreateAccounts(Trigger.new);
    }
}