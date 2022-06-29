public with sharing class MethodOverloadingClasss {
    public void sum(Integer x, Integer y){
        system.debug('Sum of 2 Integer : ' + (x+y));
    }
    public void sum(Decimal x, Decimal y){
        system.debug('Sum of 2 Decimal is : ' + (x+y));
    }
}