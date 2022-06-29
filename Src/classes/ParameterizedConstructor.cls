public with sharing class ParameterizedConstructor {
    String EmployeeName;
    Integer EmployeeNo;
    public ParameterizedConstructor() {
        EmployeeName = 'Abhishek';
        EmployeeNo = 10;
    }

    public void display(){
        System.debug('Employee Name is '+ EmployeeName);
        System.debug('Employee No is '+ EmployeeNo);
    }
}