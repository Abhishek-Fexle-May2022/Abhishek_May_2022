public with sharing class AccountTriggerHandler {
    //Create a method for beforeInsert Event and use condition for Saving account and Fixed account
    public static void accountDataInsert(List<Account> accountList){
        try {
            if(accountList.size() > 0){
                for(Account acc : accountList){
                    if(acc.Account_Type__c == 'Saving Account'){
                        acc.AccountNumber = 'SA-' + acc.AccountNumber;
                    }
                    if(acc.Account_Type__c == 'Fixed Account'){
                        acc.AccountNumber = 'FA-' + acc.AccountNumber;
                    }
                }
            } 
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }  
    }

    //Create a method for afterInsert Event
    public static void sendEmail(List<Account> accountList){
        try {
            //Create a master list to hold the emails we will send
            List<Messaging.SingleEmailMessage > emailList = new List<Messaging.SingleEmailMessage >();         
            for(Account acc : accountList) {  
                if (acc.Email__c != null) {
                    //Create a new Email
                    Messaging.SingleEmailMessage  email = new Messaging.SingleEmailMessage ();                         
                    email.setToAddresses(new List<String>{acc.Email__c});
                    email.setSubject('Congratulation :' + acc.Name);
                    String body = 'Dear' + acc.Name + 'Welcome to Axis Bank' + '<br>' + 'Your Account Has Been Registred Successfully' + '<br>' + 'If you have any query feel free to ask on 18004915555' + '<br>' +'Thanking You';
                    email.setHtmlBody(body);
                    //Add email to the master list
                    emailList.add(email);
                }
            }
            //Send all emails in the master list
            if (emailList.size() > 0) {
                Messaging.sendEmail(emailList);
            }
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }
        
    }
}