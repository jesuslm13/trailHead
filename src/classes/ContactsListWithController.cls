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
public class ContactsListWithController {
    // 21.08.19 자동 저장되는지 Test
    private String sortOrder = 'LastName';

    public ContactsListWithController() {

    }

    public void sortByLastName() {
        this.sortOrder = 'LastName';
    }
    public void sortByFirstName() {
        this.sortOrder = 'FirstName';
    }

    public List<Contact> getContacts() {
        List<Contact> results = Database.query(
            'SELECT Id, FirstName, LastName, Title, Email ' +
            'FROM Contact ' +
            'ORDER BY ' + sortOrder + ' ASC ' +
            'LIMIT 10'
        );

        return results;
    }
}