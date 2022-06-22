public class PrintDownTranglePattern {
    public PrintDownTranglePattern(){
        Boolean bool=true;
        for(Integer i=1;i<=5;i++){
            String store=' ';
            for(Integer j=1;j<=9;j++){
                if(i>=2 && i<=4){
                    if(j>=1+i && j<=9-i){
                        bool=false;
                    }
                    else{
                        bool=true;
                    }
                }
                else{
                    bool=true;
                }
                if(j>=i && j<=10-i && bool){
                    store = store +'*';
                }
                else{
                    store = store +'_';
                }
            }
            system.debug(store);
            
        }
    }

}