public class CountingValleys{
	public static int countingValleys(int steps, String path) {
        int currentLevel = 0; // starts at sea level
        int valleys = 0;
        
        for(int i = 0; i < path.length(); i++){
            if(path.charAt(i) == 'U' && currentLevel == -1){
                valleys++;
            }
            
            if(path.charAt(i) == 'D'){
                currentLevel--;
            }else{
                currentLevel++;
            }
        }
        
        return valleys;
    }
}