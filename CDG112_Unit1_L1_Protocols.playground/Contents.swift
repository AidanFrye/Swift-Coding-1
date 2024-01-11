import UIKit

//Name: Aidan Frye
//Last Modified: Jan 11



// Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
struct Human: CustomStringConvertible, Equatable, Comparable, Codable {
    var name:String
    var age:Int
    
    var description: String
    {
        return ("This person is named \(name), and is \(age) years old.")
    }
    static func ==(lhs: Human, rhs: Human) -> Bool {
        if(lhs.age == rhs.age && lhs.name == rhs.name) {
            return true
        }
        return false
    }
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
}



let aidan = Human(name:"Aidan", age:19)
let owen = Human(name:"Owen", age:16)
let beckett = Human(name:"Beckett", age: 13)
let maggie = Human(name:"Maggie", age:19)
let michael = Human(name:"Michael", age:21)

print(aidan == owen)
print(aidan != owen)

var people: [Human] = [owen, aidan, beckett, maggie, michael]

let sortedPeople = people.sorted(by: <)

let jsonEncoder = JSONEncoder()

if let jsonData = try? jsonEncoder.encode(aidan),
let jsonString = String(data: jsonData, encoding: .utf8) {
     print(jsonString)

//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.


/*:
## Exercise - Create a Protocol
 
 Create a protocol called `Vehicle` with two requirements: a nonsettable `numberOfWheels` property of type `Int`, and a function called `drive()`.
 */


//:  Define a `Car` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 4, and `drive()` should print "Vroom, vroom!" Create an instance of `Car`, print its number of wheels, then call `drive()`.


//:  Define a `Bike` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 2, and `drive()` should print "Begin pedaling!". Create an instance of `Bike`, print its number of wheels, then call `drive()`.


