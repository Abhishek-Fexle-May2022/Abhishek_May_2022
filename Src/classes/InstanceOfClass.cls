public with sharing class InstanceOfClass {

    public static void instanceOfKeyword() {
        sObject s = new Account();
        // This one is correct typecasting
        Account a = (Account)s;
        // It is wrong, Run Time Error
        Contact c = (contact)s;

        if(s instanceOf Account){
            Account acc = (Account)s;   
        }
        else if (s instanceOf Contact){
            contact con = (Contact)s;
        }
        system.debug(s);
    }
}