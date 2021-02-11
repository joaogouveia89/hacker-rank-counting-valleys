fun countingValleys(steps: Int, path: String): Int {
    var currentLevel = 0 // starts at sea level
    var valleys = 0

    for(step in path){
        if(step == 'U' && currentLevel == -1){
            valleys++
        }
        if(step == 'D'){
            currentLevel--
        }else{
            currentLevel++
        }
    }

    return valleys
}