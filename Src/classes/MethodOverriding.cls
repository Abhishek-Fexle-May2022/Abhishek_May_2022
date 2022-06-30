public with sharing class MethodOverriding {

    public virtual class ParentClass {
        public virtual void show(){
            System.debug('This is Parent-Class');
        }
    }
    public virtual class ChildClass extends ParentClass {
        public override void show(){
            System.debug('This is Child-Class');
        }
    }
}