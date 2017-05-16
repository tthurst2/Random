var numTries = 0;
var totalTries = [];
var roll1 = false , roll2 = false, roll3 = false, roll4 = false;
var x;
function d4() {
    return Math.floor(Math.random() * 4) + 1;   
}

console.log(d4);

for(var i = 0; i < 10000; i++) {
    
    while((roll1 && roll2 && roll3 && roll4) === false) {
        x = d4();
        numTries++;
        switch(x) {
            case 1:
                roll1 = true;
                break;
            case 2:
                roll2 = true;
                break;
            case 3:
                roll3 = true;
                break;
            case 4:
                roll4 = true;
                break;
            default:
                console.log("error EoB");
            }
            //console.log(roll1 + " " +  roll2 + " " + roll3 + " " + roll4 + ":" + x);
    }
    roll1 = false; roll2 = false; roll3 = false; roll4 = false;
    totalTries.push(numTries);
    console.log(numTries/(i+1));
}