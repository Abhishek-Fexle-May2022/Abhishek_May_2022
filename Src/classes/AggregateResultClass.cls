public with sharing class AggregateResultClass {

    // In this constructor we can fill total state , total district feild in country object and total district feild on state object 
    public AggregateResultClass() {
        try {
            //  fill total state on countrty object 
            List<AggregateResult> stateList = [SELECT Country__c, COUNT(Name) Total_States from State__c Group By Country__c];
            if (stateList.size() > 0) {
                Map<ID , Country__c> mapOfState = new Map<ID, Country__c>();
                for ( AggregateResult state : stateList) {
                    Country__c countryState = new Country__c();
                    countryState.ID = (ID)state.get('Country__c');
                    countryState.Total_States__c = (Decimal)state.get('Total_States');
                    mapOfState.put(countryState.ID,countryState);
                }
                if (mapOfState != null) {
                    update mapOfState.values();
                }
            }
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }
        
        try {
            // fill total District on country object
            List<AggregateResult> countryDistrictList = [SELECT Country__c, sum(Total_Districts__c)Total_Districts  from State__c group by Country__c];
            if (countryDistrictList.size() > 0) {
                Map<ID , Country__c> countrymapOfDistrict = new Map<ID, Country__c>();
                for ( AggregateResult countryDistrict : countryDistrictList) {
                    Country__c con = new Country__c();
                    con.ID = (ID)countryDistrict.get('Country__c');
                    con.Total_Districts__c = (Decimal)countryDistrict.get('Total_Districts');
                    countrymapOfDistrict.put(con.ID,con);
                }
                if (countrymapOfDistrict != null) {
                    update countrymapOfDistrict.values();
                }
            }  
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }
        

        try {
            // fill total district on state object 
            List<AggregateResult> districtList = [SELECT State__c, COUNT(Name) Total_Districts from District__c Group By State__c];
            if (districtList.size() > 0) {
                Map<ID , State__c> mapOfDistrict = new Map<ID, State__c>();
                for ( AggregateResult district : districtList) {
                    State__c stateDistrict = new State__c();
                    stateDistrict.ID = (ID)district.get('State__c');
                    stateDistrict.Total_Districts__c = (Decimal)district.get('Total_Districts');
                    mapOfDistrict.put(stateDistrict.ID,stateDistrict);
                }
                if (mapOfDistrict != null) {
                    update mapOfDistrict.values();
                }
            }
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }
    }
}