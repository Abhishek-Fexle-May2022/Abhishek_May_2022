public with sharing class DifferentTypesOfDataAndMethods {

    // Date Time Method
    public static void dateMethod(){
        Date myDate = Date.newInstance(2022,6,23);
        System.debug('Today Date : ' + myDate);
    }
    public static void addYearMethod(){
        Date myDate = Date.newInstance(2022,6,23);
        Date year = myDate.addYears(2);
        system.debug('New Date : '+ year);
    }
    public static void todayDateMethod_2(){
        Date todayDate = Date.today();
        system.debug(todayDate);
    }
    public static void dateTimeMethod(){
        DateTime myDateTime = DateTime.now();
        system.debug(myDateTime);
    }
    

    //Boolean
    public static void bolleanExample(){
        Boolean isWinner = True;
        system.debug(isWinner);
    }
    

    // Double
    public static void doubleExample(){
        Double d = 4.5689;
        system.debug(d);
    }
    

    // ID 
    public static void idExample(){
        Id i = '00300000003T2PGAA0';
        system.debug(i);
    }
    

    // Integer 
    public static void integerExample(){
        Integer i = 10;
        system.debug(i);
    }


    // Long
    public static void longExample(){
        Long l = 2147483648L;
        system.debug(l);
    }
    
    

    // Object 
    public static void objectExample(){
        Object obj = 10;
        Integer i = (Integer)obj;
        system.debug(obj);
        system.assertEquals(10, i);
    }


    // String Method
    public static void stringExample(){
        String str1 = 'I am learning apex.';
        system.debug(str1);
    }
    
    public static void stringCapatlizeMethod(){
        String str1 = 'I am learning apex.';
        String str2 = str1.capitalize();
        system.debug(str2);
    }
    
    public static void stringMethod_1(){
        String str1 = 'abhshek';
        system.debug(str1.isAllLowerCase());
    }

    public static void endWithMethod(){
        String str1 = 'Hello Abhishek';
        system.debug(str1.endsWith('Abhishek'));
    }

    public static void reversString(){
        String str1 = 'I am learning apex.';
        system.debug(str1.reverse());
    }

    
    // ============================Collections==================================

    // Map method
    public static void mapMethod(){
        Map<String,String> mapMyString = new Map<String,String>{'a'=> 'b', 'C' => 'd'.toLowerCase()};
        system.debug(mapMyString);
    }
    
    
    public static void mapMethod_1(){
        Map<Integer,String> rollNumber_Name = new Map<Integer,String>();
        rollNumber_Name.put(01,'Abhishek Girhare');
        rollNumber_Name.put(02,'Aakash Bhade');
        system.debug(rollNumber_Name);
    }
    

    //List Method
    public static void listMethod_1(){
        List<String> myList = new List<String>();
        myList.add('Abhshek');
        myList.add('Aakash');
        myList.add('Rahul');
        system.debug(myList);
    }
    public static void listMethod_2(){
        List<String> city = new List<String>{'Bhopal','Indore','Jabalpur','Betul'};
        system.debug(city);
    }
    public static void ListMethod_3(){
        List<String> colors = new List<String>{'Yellow','Red','Green'};
        colors.sort();
        System.debug(colors.get(0));

    }
    
    
    // Set Method
    public static void setMethod_1(){
        Set<Integer> mySet = new Set<Integer>();
        mySet.add(45);
        mySet.add(56);
        mySet.add(89);
        mySet.add(45);
        system.debug(mySet);       
    }

    public static void setMethod_2(){
        Set<String> mySet = new Set<String>{'Delhi','Punjab','Bhopal'};
        system.debug(mySet);
    }

    public static void isEmptyMethod(){
        Set<Integer> emptySet =new Set<Integer>();
        system.debug(emptySet.isEmpty());
    }
  
}