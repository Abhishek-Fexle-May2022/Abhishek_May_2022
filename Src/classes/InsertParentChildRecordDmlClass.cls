public with sharing class InsertParentChildRecordDmlClass {

    public static void insertParentChildRecord() {
        try {
            Date dt = Date.today();
            dt = dt.addDays(7);
            Opportunity newOpportunity = new Opportunity(
                Name = 'OpportunityWithAccountInsert',
                StageName = 'Prospecting',
                CloseDate = dt);
                
            // Create the Account object to insert.
            Account parentAccount = new Account(
                Name = 'Hallie',
                MyExtId__c = 'SAP111111'
            );
        
            // Create the account and the opportunity.
            Database.SaveResult[] results = Database.insert(new SObject[] {
                parentAccount, newOpportunity
            });

            // Check results.
            for (Integer i = 0; i < results.size(); i++) {
                if (results[i].isSuccess()) {
                    system.debug('Successfully cerated ID : ' + results[i].getID());
                }
                else {
                    system.debug('Error : could not create sobject ' + 'For array element ' + i + '.');
                    system.debug('The error reported was : ' + results[i].getErrors()[0].getMessage() + '\n');
                }
            }
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }   
    }
}