public with sharing class SobjectInsertUpdateClass {
    public SobjectInsertUpdateClass() {

        Student__c acc = new Student__c(Id = 'a065i000005xxFAAAY', Name = 'Abhishek', Nick_Name__c = 'Abhi', 	Student_Email__c = 'Abhishek@gmail.com', Student_Phone_Number__c = '98745621');
        update acc;
    }
}