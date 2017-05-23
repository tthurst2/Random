var bob = {
    firstName: "Bob",
    lastName: "Jones",
    phoneNumber: "(650) 777-7777",
    email: "bob.jones@example.com"
};

var mary = {
    firstName: "Mary",
    lastName: "Johnson",
    phoneNumber: "(650) 888-8888",
    email: "mary.johnson@example.com"
};

var contacts = [bob, mary];

function printPerson(person) {
    console.log(person.firstName + " " + person.lastName);
}

function list() {
	var contactsLength = contacts.length;
	for (var i = 0; i < contactsLength; i++) {
		printPerson(contacts[i]);
	}
}

/*Create a search function
then call it passing "Jones"*/
function search(lastName) {
    for(var prop in contacts) {
        if(contacts[prop].lastName === lastName) {
            printPerson(contacts[prop]);   
        }
    }
}

function add(firstName, lastName, phoneNumber, email) {
    contacts.push({
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        email: email
        });   
}
add("Tyler", "Thurston", "8675309", "tyler@dank.net");
list();


