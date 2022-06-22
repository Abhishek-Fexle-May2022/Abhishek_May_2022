public class PrintLeftPattern {
    public PrintLeftPattern(){
        Integer k=6;
        for(Integer i=1;i<=9;i++){
            if(i<=5){
                k--;
            }
            else{
                k++;
            }
            String store = ' ';
            for(Integer j=1;j<=5;j++){
                if(j>=k){
                    store = store + '*';
                }
                else{
                    store = store + '_';
                }
            }
            system.debug(store);
            }
	}

}