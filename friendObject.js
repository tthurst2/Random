var friends = {
    bill: {
        firstName: "Bill",
        lastName: "Gates",
        number: 50,
        address: [335, "forest oak drive"]
        },
    steve: {
        firstName: "Steve",
        lastName: "Fox",
        number: 69,
        address: [69, "dankton way"]
        }
};

var list = function(obj) {
    for(var prop in obj) {
        console.log(prop);   
    }
};

var search = function(name) {
    for(var prop in friends) {
           if(friends[prop].firstName === name) {
                console.log(friends[prop]);
                return friends[prop];
           }
    }
};

search("Bill");