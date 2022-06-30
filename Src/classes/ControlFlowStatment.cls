public with sharing class ControlFlowStatment {
    // If Else Statment
    public static void ifElseStatment(){
        Integer age=18;
        if (age>=18){
            system.debug('You are eligible for voting.');  
        }
        else {
            system.debug('You are not eligible for voting');
        }
    }

    public static void ifElseStatment_1(){
        Integer place=1;
        String medal_Color = '';
        if (place == 1){
            medal_Color = 'Gold';  
        }
        else if (place == 2){
            medal_Color = 'Silver';
        }
        else if (place == 3){
            medal_Color = 'Bronze';
        }
        else{
            medal_Color =  null;
        }
        system.debug('Medal Color :' + medal_Color);
    }

    // Nested if else
    public static void ifElseStatment_2(){
        Integer age=20;
        Integer weight = 40;
        if (age>18){
            if (weight > 50){
                system.debug('You are eligible to donate blood');
            }
            else{
                system.debug('You are not eligible to donate blood');
            }
        } 
        else {
            system.debug('Age must be greater than 18');
        }
    }

    // =====================================Loops=================================================== 
    // Do While
    public static void doWhileLoop(){
        Integer count = 1;
        do {
            system.debug(count);
            count++;
        } while (count<=5);
    }

    // While Loop
    public static void WhileLoop(){
        Integer count = 1;
        while (count<6){
            system.debug(count);
            count++;    
        }
    }

    // Right Angle Trangle
    public static void rightAngleTrangle(){
        Integer num=5,i=1,j=1;
        String str1 ='';
        while(i<=num){
            while(j<=i){
                str1 = str1 + '*';
                j++;
            }
            i++;
            system.debug(str1);
        }
    }

    // For Loop 
    public static void forLoop(){
        Integer i;
        for(i=1;i<=10;i++){
            system.debug(i);
        }
    }

    public static void forLoop_1(){
        List<Integer> myList = new List<Integer>{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        for (Integer i : myList) {
            System.debug(i);
        }
    }

    //  Number Pattern
    public static void NumberPattern(){
        integer k=1;
        for(integer i=1;i<=5;i++){
            string s = '';
            for(integer j=1;j<=i;j++){
                if(j<=i){
                    s = s + k;
                    k++;
                }
            }
            system.debug(s);
        }
    }
}