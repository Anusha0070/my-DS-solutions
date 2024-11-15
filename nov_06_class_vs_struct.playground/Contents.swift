import UIKit

var greeting = "Hello, playground"

//demonstrate the example of classes and struct and show how they are different with each other

// Class example



class Car{
    var model: String
    var price: Int
    
    init(model: String, price: Int) {
        self.model = model
        self.price = price
    }
    
    deinit {
        print("Car is deinitialized")
    }
    
}

if true{ //One way to deinitialze
    var car1 = Car(model: "Toyota", price: 100000)
    
    print(car1.model)
    var car2 = car1 // car2 is also refering to the same instance as car1
    
    print(car2.model)
    car2.model = "Honda"
    
    print(car2.model)
    print(car1.model)
    
}

var car3 : Car? = Car(model: "BMW", price: 200000)
car3 = nil // another way to deinitialize by assigning nil



//--------------------------------------------------------------------------------------------
// Struct example

struct UserModel{
    var name : String
    var age : Int
}

var user1 = UserModel(name: "John", age: 20)
var user2 = user1

print(user1.name)
user2.name = "Jane"

print(user2.name)
print(user1.name)



// R&D
// Why structs are faster?
/**
 So struct uses stack memory
 in stack the memory allocation is faster because it follows a predictable pattern of last in first out
 
 Where
 */

// Deinitializer example

/*
Information about Deinitializer
1. Deinitializer never takes parameters or returns data
2. They run when last copy of the class instance is destroyed
3. Cannot call deinitializers directly
4. Struct dont have deinitializers
5. It mainly depends on scope
*/

//class Person{
//    var id: Int
//    init(id: Int) {
//        self.id = id
//    }
//    
//    deinit {
//        print("\nPerson ID: \(id) is deinitialized")
//    }
//}
//
//
//if(1 == 1){
//    var person = Person(id : 1)
//    print("\nHey this is Person ID \(person.id)!!")
//}




// ARC Automatic Reference Counting


struct Address{
    var street: String?
    var city: String?
}

class Person{
    var name: String
    var address: Address?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\nPerson ID: \(name) is deinitialized")
    }
}

var person1 = Person(name: "John")
var address1 = Address(street: "123 Main Street", city: "New York")
person1.address = address1

print(person1.address?.city)

person1.address?.city = "San Jose"

print(person1.address?.city)

print(address1.city)

var person2 = person1
person2.address?.city = "Tucson"
print(person1.address?.city)

print(address1.city)

//var person2 = Person(name: "Jane")
//var address2 = Address(street: "123 Main Street", city: "Tucson")
//person2.address = address2
//
//print(person2.address?.city)






