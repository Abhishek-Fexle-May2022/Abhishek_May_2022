public with sharing class ParameterizedConstructor {
    String employeeName;
    Integer employeeNo;
    public ParameterizedConstructor(String employeeName ,Integer employeeNo) {
        this.employeeName = employeeName;
        this.employeeNo = employeeNo;
    }
    public void display() {
        System.debug('Employee Name is '+ EmployeeName);
        System.debug('Employee No is '+ EmployeeNo);
    }
}