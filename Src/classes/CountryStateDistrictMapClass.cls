public with sharing class CountryStateDistrictMapClass {

    public static void MapOfCountryCodeCountryStateDistrict() {
        Map<String, Map<String, Map<String, List<String>>>> mapOfCountryCode = new Map<String, Map<String, Map<String, List<String>>>>();

        //  List of district state wise of india 
        List<String> mpDistrict = new List<String>{'Bhopal','Indore','Sehore','Gwalior'};
        List<String> maharastraDistrict = new List<String>{'Mumbai','Nagpur','Pune','Solapur'};
        List<String> upDistrict = new List<String>{'Agra','Allahabad','Sultanpur','Ghaziabad'};
        List<String> sikkimDistrict = new List<String>{'Gangtok','Soreng','Namchi','Pakyong	'};
        
        // List of district state wise of Australia
        List<String> newSouthWales = new List<String>{'Sydney','Hunter','Murray','Northern'};
        List<String> victoria = new List<String>{' Ballarat','Horsham','Mildura','Shepparton'};
        List<String> southAustralia = new List<String>{'Alberton','Adelaide','Sydney','Murray'};

        // List of district state wise of Maxico
        List<String> jalisco = new List<String>{'Mascota','Píhuamo','San Marcos'};
        List<String> morelos = new List<String>{'Temoac','Huitzilac','Ayala'};

        // Assigning List of district according to state
        Map<String, List<String>> indiaStateMap = new  Map<String, List<String>>{'Madhya Pradesh' => mpDistrict, 'Maharastra' => maharastraDistrict, 'Uttar Pradesh' => upDistrict, 'Sikkim' => sikkimDistrict};
        Map<String, List<String>> australiaStateMap = new  Map<String, List<String>>{'New South Wales' => newSouthWales, 'Victoria' => victoria, 'Australia South' => southAustralia};
        Map<String, List<String>> mexicoStateMap = new  Map<String, List<String>>{'Jalisco' => jalisco, 'Morelos' => morelos };

        // Assigning List of state according to Country
        Map<String, Map<String, List<String>>> indiaMap = new  Map<String,  Map<String, List<String>>>{'India' => indiaStateMap};
        Map<String, Map<String, List<String>>> australiaMap = new  Map<String,  Map<String, List<String>>>{'Australia' => australiaStateMap};
        Map<String, Map<String, List<String>>> maxicoMap = new  Map<String,  Map<String, List<String>>>{'Maxico' => mexicoStateMap};

        // Assigning List of state according to Country Code
        mapOfCountryCode.put('91',indiaMap);
        mapOfCountryCode.put('61',australiaMap);
        mapOfCountryCode.put('52',maxicoMap);
        
        // get country code key set
        for(String countryCode : mapOfCountryCode.keySet()){
            // get country name map
            Map<String,Map<String,List<String>>> countriesName = mapOfCountryCode.get(countryCode);
            // get country name keyset from country map 
            for(String countryKey : countriesName.keySet()){
                // chacking country name starts from A
                if(countryKey.startsWith('A')){
                    // get state map 
                    Map<String,List<String>> stateNames = countriesName.get(countryKey);
                    // get state name keyset from  state map 
                    for(String stateKeys : stateNames.keySet()){
                        // chacking state name starts from A
                        if(stateKeys.startsWith('A')){
                            // get district name list 
                            List<String> districtList = stateNames.get(stateKeys);
                            // get district name form the district list 
                            for(String district : districtList){
                                // chacking district name starts from A
                                if(district.startsWith('A')){
                                    system.debug('Country Name  : ' + countryKey);
                                    system.debug('State Name : ' + stateKeys);
                                    system.debug('District Name  : ' + district);
                                }
                            }
                        }
                    }
                }
            }
        }

        // Finding  Districts which length is more or equal to some number
        List<String> allDistricts = new List<String>();
        // get country code key set
        for(String countryCode : mapOfCountryCode.keySet()){
            // get country name map
            Map<String,Map<String,List<String>>> countriesName = mapOfCountryCode.get(countryCode);
            // get country name keyset from country map 
            for(String countryKey : countriesName.keySet()){
                // get state map
                Map<String,List<String>> stateNames = countriesName.get(countryKey);
                // get state name keyset from  state map 
                for(String stateKeys : stateNames.keySet()){
                    // get district name list 
                    List<String> districtList = stateNames.get(stateKeys);
                    // add all district in districtList
                    allDistricts.addAll(districtList);
                }
            }
        }

        Integer size = 8;
        // get districts from all distdict list
        for(String districtLength : allDistricts){
            // cheacking district length is greter then size
            if(districtLength.length() > size){
                // print the district greter then given length
                system.debug('District greter then given length : ' +districtLength);
            }
        }
    }
}