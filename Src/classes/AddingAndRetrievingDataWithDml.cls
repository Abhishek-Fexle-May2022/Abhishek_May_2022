public with sharing class AddingAndRetrievingDataWithDml {

    public static void addAndRetrieveData() {
        try {
            // Query existing account.
            Account acc = [SELECT Name,Industry FROM Account WHERE Name = 'GE Italy' LIMIT 1];
            system.debug('Account Name before update: ' + acc.Name); 
            system.debug('Account Industry before update: ' + acc.Industry);

            // Modify the two fields on the sObject.
            acc.Name = 'Account of the Day';
            acc.Industry = 'Technology';

            // Persist the changes.
            update acc;

            // Get a new copy of the account from the database with the two fields.
            Account newAcc = [SELECT Name,Industry FROM Account WHERE Name='Account of the Day' LIMIT 1];

            // Verify that updated field values were persisted.
            system.assertEquals('Account of the Day', newAcc.Name);
            system.assertEquals('Technology', newAcc.Industry);
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }
    }
}