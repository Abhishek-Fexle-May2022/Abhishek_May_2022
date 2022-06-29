public with sharing class CallByValueAndRefrence {

    Integer i = 10;
    public CallByValueAndRefrence(){
        Account a = new Account();
        a.Name = 'Fexle';
        a.Website = 'www.fexle.com';
        system.debug('Weblist : ' + a.Website);
        changeWebsite(a);
        checkCallByValue(i);
        system.debug('Check I : ' + i);

    }
    public Account changeWebsite(Account b){
        b = new Account();
        b.Website = 'www.salesforce.com';
        system.debug('Website : ' + b.Website);
        return b;

    }


    public void checkCallByValue(Integer i){
        i=50;
        system.debug('Check I :' +i);
    }

}