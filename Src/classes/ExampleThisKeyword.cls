public with sharing class ExampleThisKeyword {
    public String name ;
    public Integer contactNumber ;
    public ExampleThisKeyword(String name , Integer contactNumber) {
        this.name = name;
        this.contactNumber = contactNumber;
    }

    public void display() {
        system.debug('My name is ' + name);
        system.debug('My contact number is ' + contactNumber);
    }
}