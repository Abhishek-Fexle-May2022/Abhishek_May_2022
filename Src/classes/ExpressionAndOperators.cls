public with sharing class ExpressionAndOperators {

    // Assignment operator
    public static void assignmentOperator(){
        Integer x=25;
        Integer y = x;
        System.debug(y);

    }

    // Addition assignment operator 
    public static void additionAssignmentOperator(){
        Integer a,b,c;
        a=25;
        b=55;
        c=a+b;
        a+=c;
        System.debug(a);
    }

    // Multiplication assignment operator
    public static void multiplicationAssignmentOperator(){
        Integer a,b,c;
        a=10;
        b=15;
        c=b-a;
        a*=c;
        System.debug(a);
    }

    // Subtraction assignment operator
    public static void subtractionAssignmentOperator(){
        Integer a,b,c;
        a=10;
        b=15;
        c=b-a;
        a-=c;
        System.debug(a);
    }

    // Division assignment operator
    public static void divisionAssignmentOperator(){
        Integer a,b,c;
        a=10;
        b=16;
        c=b+a;
        c/=2;
        System.debug(c);
    }

    // OR assignment operator
    public static void orAssignmentOperatior(){
        Boolean a,b;
        a=false;
        b=false;
        system.debug(a |= b);
    }

    // AND assignment operator
    public static void andAssignmentOperatior(){
        Boolean a,b;
        a=false;
        b=false;
        system.debug(a &= b);
    }

    public static void andAssignmentOperatior_1(){
        Integer a,b;
        a=10;
        b=10;
        system.debug(a &= b);
    }

    // Ternary Operator
    public static void ternaryOperator(){
        Boolean sunday = true;
        String msg = sunday ? 'Today is  Sunday' : 'Today is not Sunday.';
        System.debug('Message - ' + msg);
    }

    // =============================Logical Operator ===========================================

    // And Logical Operator
    public static void andLogicalOperatior(){
        Boolean c,d;
        c=true;
        d=true;
        system.debug(c&&d);
    }

    // or Logical Operator
    public static void orLogicalOperatior(){
        Boolean c,d;
        c=false;
        d=false;
        system.debug(c||d);
    }


    // Equality operator
    public static void exualityOperatior(){
        Integer a,b;
        a=10;
        b=10;
        system.debug(a == b);
    }

    // Less than operator
    public static void lessThanOperatior(){
        Integer x,y;
        x=5;
        y=10;
        system.debug(x<y);
    }

    // Greater than operator
    public static void greaterThanOperatior(){
        Integer x,y;
        x=5;
        y=10;
        system.debug(x>y);
    }
    

    // Inequality operator
    public static void inequalityOperatior(){
        Integer x,y;
        x=5;
        y=10;
        system.debug(x!=y);
    }

    // Logical complement operator
    public static void logicalComplementOperatior(){
        Boolean x;
        x=false;
        system.debug(!x);
    }

    // Unary negation operator
    public static void unaryNegationOperatior(){
        Integer x;
        x=10;
        system.debug(-x);
    }

    // Increment operator
    public static void incrementOperatior(){
        Integer x;
        x=10;
        x++;
        system.debug(x);
    }

    // Decrement operator
    public static void decrementOperatior(){
        Integer x;
        x=10;
        x--;
        system.debug(x);
    }
    // Bitwise AND operator
    public static void bitwiseAndOperator(){
        Integer x=56;
        Integer y=10;
        Integer result = x & y;
        system.debug(result);
        
    }

    // Bitwise OR operator
    public static void bitwiseOrOperator(){
        Integer x=56;
        Integer y=10;
        Integer result = x | y;
        system.debug(result);
        
    }

    // Bitwise Not or Complement operator
    public static void bitwiseNotOperator(){
        Integer x = 1;
        system.debug(~x);

    }

    // safe navigation operator

    public static void safeNavigationOperator(){
        string str1;
        system.debug(str1?.toLowerCase());

    }

    public static void safeNavigationOperator_1(){
        String student1 =[SELECT City__c  FROM Student__c WHERE Name = 'Abhishek Pawar' ]?.City__c;
        system.debug(student1);
    }

}