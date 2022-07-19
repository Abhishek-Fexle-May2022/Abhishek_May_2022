public with sharing class MapProcessOfCountryStateDistrict {

    Map<String, Map<String, List<String>>> mapOfCountry = new Map<String, Map<String, List<String>>>();
    // Fill cuntry state map all data in mapOfCountry
    public MapProcessOfCountryStateDistrict() {
        try {
            List<District__c> districtList = [SELECT Name, State__r.Name, State__r.Country__r.Name FROM District__c ];
            if(districtList.size() > 0) {
                for (District__c district : districtList) {
                    if (!mapOfCountry.containsKey(district.State__r.Country__r.Name)) {
                        mapOfCountry.put(district.State__r.Country__r.Name, new Map<String,List<String>>());
                    }
                    if (mapOfCountry != null && mapOfCountry.get(district.State__r.Country__r.Name) != null) {
                        Map<String,List<String>> stateAndDistrictMap = mapOfCountry.get(district.State__r.Country__r.Name);
                        if (!stateAndDistrictMap.containsKey(district.State__r.Name)) {
                            stateAndDistrictMap.put(district.State__r.Name, new List<String>());
                        }
                        if (stateAndDistrictMap != null) {
                            stateAndDistrictMap.get(district.State__r.Name).add(district.Name);
                            mapOfCountry.put(district.State__r.Country__r.Name, stateAndDistrictMap);
                        }  
                    }   
                }
            }
            System.debug('Country map : ' + mapOfCountry); 
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }
    }

    // Find country name , state name , district with given charecter
    public static void findDistrictLength(String startingCharector) {
        try {
            Map<String, Map<String, List<String>>> mapOfCountryFind = new Map<String, Map<String, List<String>>>();

            List<District__c> districtListFind = [SELECT Name, State__r.Country__r.Name, State__r.Name FROM District__c WHERE Name LIKE : startingCharector +'%' AND State__r.Name LIKE : startingCharector + '%' AND State__r.Country__r.Name LIKE : startingCharector + '%'];
            if (districtListFind.size() > 0) {
                for(District__c district : districtListFind) {
                    if (!mapOfCountryFind.containskey(district.State__r.Country__r.Name)) {
                        mapOfCountryFind.put(district.State__r.Country__r.Name, new Map<String,List<String>>());
                    }
                    if (mapOfCountryFind != null && mapOfCountryFind.get(district.State__r.Country__r.Name) != null) {
                        Map<String,List<String>> mapOfStateAndDistrict = mapOfCountryFind.get(district.State__r.Country__r.Name);
                        if(!mapOfStateAndDistrict.containskey(district.State__r.Name)) {
                            mapOfStateAndDistrict.put(district.State__r.Name, new List<String>());
                        }
                        if(mapOfStateAndDistrict != null){
                            mapOfStateAndDistrict.get(district.State__r.Name).add(district.Name);
                        }
                    }
                }
                System.debug('Country name State name District name map with given charector : ' + mapOfCountryFind);
            }
                
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }
    }
    
    // Find length greter then given length 
    public static void lengthOfDistrict (Integer length) {
        try {
            List<District__c> allDistrictList = [SELECT Name FROM District__c];
            if (allDistrictList.size() > 0) {
                for (District__c districtString : allDistrictList) {
                    if ((String.valueOf(districtString.Name)).length() >= length ) {
                        system.debug('District lenth greter then given length : ' + districtString.Name);
                    }
                }
            }
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        } 
    }

    // Find length of district greter then given length using mapOfCountry
    public void districtLength() {
        try {
            // get district from mapOfCountry 
            if (mapOfCountry != null) {
                for(String countryName : mapOfCountry.keySet()) {
                    Map<String,List<String>> mapOfState = mapOfCountry.get(countryName);
                    if (mapOfState !=null) {
                        for (String stateName : mapOfState.keySet()) {
                            for(String districtLength : mapOfState.get(stateName)) {
                                if(districtLength.length() > 8) {
                                    system.debug('district length greter then given length :' + districtLength);
                                }
                            }
                        } 
                    }
                }
            }
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }
    }

    // Creating wrapper class
    public class Districts {
        Public String districtName{get; set;}
    }
    public class States{
        Public List<Districts> districts{get; set;}
        public Integer total_State_Districts{get; set;}
        Public string stateName{get; set;}
    }
    public class Country{
        public String countryName{get; set;}
        public String countryCode{get;set;}
        public Integer total_Districts{get; set;}
        public Integer total_States{get; set;}   
    }

    // get json data
    Country countries = new Country();
    public void CountryJSONGenerator(String countryName, String countryCode) {
        try {
            List<Country__c> countryList = [SELECT Country_JSON_Data__c FROM Country__c WHERE Name = : countryName AND Country_Code__c = : countryCode LIMIT 1];
            if (countryList.size() > 0) {
                countries.countryName = countryName;
                countries.countryCode = countryCode;

                List<AggregateResult> total_States = [SELECT COUNT(Name) Total_States FROM State__c WHERE Country__r.Name = : countryName  Group By Country__r.Name];
                if (total_States.size() > 0) {
                    countries.total_States =  (Integer)total_States[0].get('Total_States');

                    List<AggregateResult> total_Districts = [SELECT COUNT(Name) Total_Districts FROM District__c WHERE State__r.Country__r.Name = : countryName Group By State__r.Country__r.Name];  
                    if (total_Districts.size() > 0) {
                        countries.total_Districts = (Integer)total_Districts[0].get('Total_Districts');
                        
                        for(String state : mapOfCountry.get(countryName).keyset()) {
                            States stateDate = new States();
                            stateDate.stateName = state;
                            stateDate.districts = new list<Districts>();
    
                            List<AggregateResult> districtList = [SELECT COUNT(Name)Total_Districts FROM District__c WHERE State__r.Country__r.Name = : countryName Group By State__r.Name]; 
                            if (districtList.size() > 0) {
                                stateDate.total_State_Districts = (Integer)districtList[0].get('Total_Districts');

                                for(String districtData : mapOfCountry.get(countryName).get(State)) {
                                    Districts district = new Districts();
                                    district.districtName = districtData; 
                                    stateDate.districts.add(district);
                                }
                            }
                            countryList[0].Country_JSON_Data__c = JSON.serialize(countries);
                            update countryList[0];
                        }   
                    }  
                } 
            }
        } catch (DmlException e) {
            system.debug('The following exception has occurred: ' + e.getMessage());
        }
        
    }
}