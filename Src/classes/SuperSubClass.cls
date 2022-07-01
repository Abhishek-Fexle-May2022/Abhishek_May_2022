public with sharing class SuperSubClass extends SuperClass {
    public override void printName() {
        super.printName();
        System.debug('But you can call me ' + super.getFirstName());
    }
    public SuperSubClass() {
        super('Madam', 'Brenda', 'Clapentrap');
    }
}