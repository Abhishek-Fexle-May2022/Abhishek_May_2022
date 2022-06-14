public class StudentInfo {
        public static void infoStudent(){
        Student__c student = new Student__c();
        student.Name = 'Abhishek Pawar';
        student.Nick_Name__c = 'Abhishek';
        student.Date_of_Birth__c = Date.newInstance(2022, 06, 07) ;
        student.Date_and_Time__c = DateTime.newInstanceGmt(2022, 06, 07, 17, 20, 32);
        student.Student_Phone_Number__c = '9893030346' ;
        student.Student_Email__c = 'abhishekpawar@gmail.com';
        student.Student_linkdin_Id__c = 'https://www.youtube.com/' ;
        student.Roll_Number__c = 170240420;
        student.City__c = 'Bhopal';
        student.Address__c = 'Bhopal';
        student.Student_Details__c = 'college Student';
        student.Time__c = Time.newInstance(17, 17, 17, 17);
        student.Exame_fees__c  = 2000;
        student.College_Fees__c = 40000;
        student.PG_percentage__c = 90;
        student.Country__c = 'India';
        student.State__c = 'Madhya Pradesh' ;
        student.Indian_Student__c = true;
        student.Bank_Account_Number__c = '7894563217';
        insert student;
        
    } 

}