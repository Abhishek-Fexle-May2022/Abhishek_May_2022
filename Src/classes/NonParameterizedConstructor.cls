public with sharing class NonParameterizedConstructor {

    String name;
    Integer age;
    public NonParameterizedConstructor() {
        name = 'Abhishek Girhare';
        age = 22;
        system.debug('Name : ' + name);
        system.debug('Age : ' + age );
    }
}