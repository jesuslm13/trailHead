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
trigger RestrictContactByName on Contact (before insert) {
  
	//check contacts prior to insert or update for invalid data
	for(Contact c : Trigger.New){
		if(c.LastName == 'INVALIDNAME') {	//invalidname is invalid
			c.AddError('The Last Name "'+c.LastName+'" is not allowed for DML');
		}
	}
}