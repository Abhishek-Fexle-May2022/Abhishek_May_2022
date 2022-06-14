public class StudentDebugQuery {
    public StudentDebugQuery(){
        Student__c student1 = [SELECT ID, Name, Student_Email__c FROM Student__c ORDER BY createdDate DESC LIMIT 1];
        system.debug('Check Student Data' + student1);
        
        List<Student__c> StudentList = [SELECT ID, Roll_Number__c, Student_Email__c, Student_Phone_Number__c, Nick_Name__c FROM Student__c ORDER BY CreatedDate DESC LIMIT 5];
        for(Student__c student : StudentList){
        	system.debug('Check Student Data :::' + studentList);
        }

    }

}