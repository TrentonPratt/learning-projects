let sportsOne: string[] = ["Golf", "Cricket", "Tennis", "Swimming"]

// for (let i=0; i < sportsOne.length; i++) {
//     console.log(sportsOne[i]);
// }

// Simplified

for (let tempSport of sportsOne) {

    if(tempSport == "Tennis") {
        console.log(tempSport + " << My Favorite!")
    }
    else {
        console.log(tempSport);
    }
    
}