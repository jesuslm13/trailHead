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
public with sharing class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer contactCnt, String lastName){
        
        List<Contact> listContact = new List<Contact>();

        for(Integer i=0; i<contactCnt; i++){
            Contact c = new Contact();
            c.LastName = lastName;
            c.FirstName = String.valueOf(i);

            listContact.add(c);
        }

        return listContact;
    }
    
}