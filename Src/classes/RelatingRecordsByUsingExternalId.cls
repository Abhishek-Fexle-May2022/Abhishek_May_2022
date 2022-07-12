public with sharing class RelatingRecordsByUsingExternalId {

    public static void relatingRecords() {
        try {
            Opportunity newOpportunity = new Opportunity(
            Name = 'OpportunityWithAccountAbhishek',
            StageName = 'Prospecting',
            CloseDate = Date.today().addDays(7));

            Account accountReference = new Account(MyExtID__c = 'SAP100001');

            // Add the account sObject to the opportunity.
            newOpportunity.Account = accountReference;

            // Create the opportunity.
            Database.SaveResult results = Database.insert(newOpportunity);
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }
    }
}