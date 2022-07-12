public with sharing class SingleVsBulkDMLOperations {

    public static void dmlOperations() {
        try {
            // List to hold the new contacts to update.
            List<Contact> dmlList = new List<Contact>();
            for(Contact con : [Select Department , Description from Contact]) {
                if (con.Department == 'Finance') {
                    con.Description = 'New description';
                    // Add updated contact sObject to the list.
                    dmlList.add(con);
                }
            }

            // Call update on the list of contacts.
            // This results in one DML call for the entire list.
            update dmlList;
            system.debug(dmlList);
            
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }
    }
}