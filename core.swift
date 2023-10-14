// Variables
var str = "Hello, iOS" // Mutable variable
let pi = 3.14 // Immutable variable

// Data Types
var name: String = "John"
var age: Int = 20
var ageU: UInt = 20 // Unsigned Int
var height: Double = 1.75
var weight: Float = 65.5
var isStudent: Bool = true

// For these data types we have to 16, 32 and 64 bits version, so we can create
// Int8, Int16, Int32, Int64 and the same for others numeric types.

var character: Character = "a"

// Collections
// Array
var names: [String] = ["John", "Borba", "Nilza"]
var ages: [Int] = [20, 50, 45]
var heights: [Double] = [1.75, 1.80, 1.65]
var weights: [Float] = [65.5, 70.5, 60.5]
var isStudents: [Bool] = [true, false, true]
var withNoType: [Any] = ["John", 26, 1.70, 70.5, true]

// Dictionary - Represents a collection of key-value pairs.
var person: [String: Any] = ["name": "John", "age": 26, "height": 1.70, "weight": 70.5, "isStudent": true]
// We can use the type Any to store any type of data in a dictionary and set an key for every value.
// so we can use the key to access the value inside the dictionary.
print(person["name"]!) // the key "!" Is used to force the unwrap of the value, because the value can be nil.
// So we can use that key to force unwrap and return the value. But if the key doesn't exist, the app or your code will crash.
// The best way to access the value is using the optional binding.

// Optional Binding example:
if let name = person["name"] {
    print("name: \(name)")
} else {
    print("name is: nil")
}

// Set
let namesSet: Set<String> = ["John", "Borba", "Nilza"] // Set Collection doesn't allow duplicated values and are unordered collection.

// Tuples - Represents a finite ordered list of elements. Each element can have a different type and can be accessed by index or name.
var personTuple: (String, Int, Double, Float, Bool) = ("John", 26, 1.70, 70.5, true)
let tupleName = personTuple.0
print("personName: \(tupleName)")
let tupleAge = personTuple.1
print("personAge: \(tupleAge)")

// Optionals - Represents a variable that can have a value or not.
var nameOptional: String? = "John"
var ageOptional: Int? = 26
var heightOptional: Double? = 1.70

// Enumerations (Enums)
enum CompassDirection {
    case north
    case south
    case east
    case west
}

// Enum with associated values
enum UserAction {
    case tap(x: Int, y: Int)
    case swipe(direction: CompassDirection, speed: Double)
    case longPress(duration: Double)
}

// Enum with raw values
enum Weekday: Int {
    case sunday = 1
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

// Enum with methods
enum TrafficLight {
    case red
    case yellow
    case green
    
    func next() -> TrafficLight {
        switch self {
        case .red:
            return .green
        case .yellow:
            return .red
        case .green:
            return .yellow
        }
    }
}

// Structures (Structs) - Represents a data structure that can have properties and methods.
struct PersonStruct {
    var name: String
    var age: Int
    var height: Double
    var weight: Float
    var isStudent: Bool
    
    func walk() {
        print("\(name) is walking")
    }
}

// Using an struct for example:
var personStruct: PersonStruct = PersonStruct(name: "John", age: 26, height: 1.70, weight: 70.5, isStudent: true)
personStruct.walk()
let personName = personStruct.name
print("personName: \(personName)")

// Classes - Represents a data structure that can have properties and methods.
class PersonClass {
    var name: String
    var age: Int
    var height: Double
    var weight: Float
    var isStudent: Bool
    
    init(name: String, age: Int, height: Double, weight: Float, isStudent: Bool) {
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.isStudent = isStudent
    }
    
    func walk() {
        print("\(name) is walking")
    }
}

// Using an class for example:
var personClass: PersonClass = PersonClass(name: "John", age: 26, height: 1.70, weight: 70.5, isStudent: true)
personClass.walk()
let personClassName = personClass.name
print("personClassName: \(personClassName)")

// Closures and Functions
// Closures - Represents a function without name and can be stored in a variable.
var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}
let resultSumFunction = sumFunction(a: 2, b: 3)

func sumFunctionWithKeys(firstValue a: Int, secondValue b: Int) -> Int {
    return a + b
} // We can set keys for the parameters to make the function more readable and accessible, escaping the need to
// remember the order of the parameters.
let resultSumFunctionWithKeys = sumFunctionWithKeys(firstValue: 2, secondValue: 3)

func printOnConsole(inputValue value: String) -> Void {
    print("Input: \(value)")
}

// Any and AnyObject - Represents a variable that can have any type of value.
var anyValue: Any = "John"
anyValue = 26
anyValue = 1.70
anyValue = true

var anyObjectValue: AnyObject = "John" as AnyObject
anyObjectValue = 26 as AnyObject
anyObjectValue = 1.70 as AnyObject

// Typealias - Represents an alias for a type.
typealias PersonType = PersonStruct // We can use the typealias to create an alias for a type.
var personType: PersonType = PersonType(name: "John", age: 26, height: 1.70, weight: 70.5, isStudent: true)
print("personType: \(personType)")

typealias PersonType2 = PersonClass
let personType2: PersonType2 = PersonType2(name: "John", age: 26, height: 1.70, weight: 70.5, isStudent: true)
personType2.walk()

// Error Handling
enum LoginError: Error {
    case wrongLogin
    case wrongPassword
    case noInternetConnection
}

func login(userName: String, password: String) throws -> Bool {
    if checkInternetConnection() {
        if userName == "John" {
            if password == "123456" {
                return true
            } else {
                throw LoginError.wrongPassword
            }
        } else {
            throw LoginError.wrongLogin
        }
    } else {
        throw LoginError.noInternetConnection
    }
}

func checkInternetConnection() -> Bool {
    return true
}

do {
    let result = try login(userName: "John", password: "123456")
    print("Login success: \(result)")
} catch LoginError.wrongLogin {
    print("Wrong login")
} catch LoginError.wrongPassword {
    print("Wrong password")
} catch LoginError.noInternetConnection {
    print("No internet connection")
} catch {
    print("Unknown error")
}

// Protocol-Oriented Programming
// Protocol - Represents a set of rules that a class or struct must follow.
protocol Vehicle {
    var speed: Double { get set }
    var isMoving: Bool { get set }
    
    mutating func start() -> Void
    mutating func stop() -> Void
}

struct Car: Vehicle {
    var speed: Double = 0
    var isMoving: Bool = false
    
    mutating func start() {
        self.isMoving = true
        self.speed = 50
    }
    
    mutating func stop() {
        self.isMoving = false
        self.speed = 0
    }
}

// Generics
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp: T = a
    a = b
    b = temp
}
// inout keyword is used to pass the variable by reference.

var x = 5, y = 10
swapValues(&x, &y)

protocol AlarmDelegate {
    func alarmDigRing()
    func alarmDidStop()
}

class AlarmClock {
    var delegate: AlarmDelegate?

    func ringAlarm() {
        delegate?.alarmDigRing()
    }
}

class Person: AlarmDelegate {
    var alarmClock: AlarmClock = AlarmClock()

    init() {
        alarmClock.delegate = self
    }

    func alarmDigRing() {
        print("Alarm is ringing")
    }

    func alarmDidStop() {
        print("Alarm stopped")
    }
}

let personAlarmClock = Person()
personAlarmClock.alarmClock.ringAlarm()

// Access Control - Represents a way to restrict access to parts of your code.
// public - Accessible from anywhere.
// internal - Accessible from the module where it is defined.
// fileprivate - Accessible from the file where it is defined.
// private - Accessible only from the scope where it is defined.

// Subscripts - Represents a way to access the elements of a collection, sequence or list.
struct Week {
    var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    subscript(index: Int) -> String {
        return days[index]
    }
}

let week = Week()
print(week[0])

// OptionSet
struct Permissions: OptionSet {
    let rawValue: Int
    
    static let read = Permissions(rawValue: 1 << 0)
    static let write = Permissions(rawValue: 1 << 1)
    static let execute = Permissions(rawValue: 1 << 2)
}

let readWrite: Permissions = [.read, .write]
print(readWrite.contains(.read))

// Guard - Represents a way to check if a condition is true, if not, it will execute the else block.
func checkAge(age: Int) -> Void {
    guard age >= 18 else {
        print("You are not allowed to enter")
        return
    }
    
    print("You are allowed to enter")
}

let myAge = 26
checkAge(age: Int(myAge))

// Defer - Represents a way to execute a block of code when the current scope is exited.
func openFile() {
    print("File opened")
}

func closeFile() {
    print("File closed")
}

func processFile() {
    openFile()
    
    defer { closeFile() }
    
    print("File processing")
}

processFile()

// Loops
// For-in
let namesForIn: [String] = ["John", "Borba", "Nilza"]
for name in namesForIn {
    print(name)
}

// While
var namesWhile: [String] = ["John", "Borba", "Nilza"]
while namesWhile.count > 0 {
    print(namesWhile.removeFirst())
}

// Repeat-While
var namesRepeatWhile: [String] = ["John", "Borba", "Nilza"]
repeat {
    print(namesRepeatWhile.removeFirst())
} while namesRepeatWhile.count > 0

// For enumerated
let namesForEnumerated: [String] = ["John", "Borba", "Nilza"]
for (index, name) in namesForEnumerated.enumerated() {
    print("\(index): \(name)")
}

// Data Structures and Algorithms
let namesForFilter: [String] = ["John", "Borba", "Nilza"]
let filteredNames = namesForFilter.filter { (name) -> Bool in
    return name.count > 4
}
print(filteredNames)

let namesForMap: [String] = ["John", "Borba", "Nilza"]
let mappedNames = namesForMap.map { (name) -> String in
    return name.uppercased()
}
print(mappedNames)

let namesForReduce: [String] = ["John", "Borba", "Nilza"]
let reducedNames = namesForReduce.reduce("") { (result, name) -> String in
    return result + name
}
print(reducedNames)

// Safety & Scope
// Optional Chaining -- Represents a way to access the properties and methods of a optional value.
struct PersonOptionalChaining {
    var name: String
    var age: Int
    var height: Double
    var weight: Float
    var isStudent: Bool
    var address: Address?
}

struct Address {
    var street: String
    var number: Int
    var city: String
    var state: String
    var country: String
}

let address = Address(street: "Street", number: 123, city: "City", state: "State", country: "Country")
let personOptionalChaining = PersonOptionalChaining(name: "John", age: 26, height: 1.70, weight: 70.5, isStudent: true, address: address)

if let personAddress = personOptionalChaining.address {
    print("Address: \(personAddress)")
} else {
    print("Address is nil")
}

if let personAddress = personOptionalChaining.address?.street {
    print("Address: \(personAddress)")
} else {
    print("Address is nil")
}

// Nil-Coalescing Operator - Represents a way to unwrap an optional value or return a default value.
let personNameNilCoalescingOperator: String? = "John"
let personNameNilCoalescingOperator2: String? = nil
let personNameNilCoalescingOperator3: String? = "Borba"

let personNameNilCoalescingOperatorResult = personNameNilCoalescingOperator ?? "Unknown"
let personNameNilCoalescingOperatorResult2 = personNameNilCoalescingOperator2 ?? "Unknown"
let personNameNilCoalescingOperatorResult3 = personNameNilCoalescingOperator3 ?? "Unknown"

print(personNameNilCoalescingOperatorResult)
print(personNameNilCoalescingOperatorResult2)
print(personNameNilCoalescingOperatorResult3)

// Optional Try - Represents a way to execute a throwing function and handle the error.
enum LoginErrorOptionalTry: Error {
    case wrongLogin
    case wrongPassword
    case noInternetConnection
}

func loginOptionalTry(userName: String, password: String) throws -> Bool {
    if checkInternetConnection() {
        if userName == "John" {
            if password == "123456" {
                return true
            } else {
                throw LoginErrorOptionalTry.wrongPassword
            }
        } else {
            throw LoginErrorOptionalTry.wrongLogin
        }
    } else {
        throw LoginErrorOptionalTry.noInternetConnection
    }
}

func checkInternetConnectionOptionalTry() -> Bool {
    return true
}

if let result = try? loginOptionalTry(userName: "John", password: "123456") {
    print("Login success: \(result)")
} else {
    print("Login error")
}

// Mutating Methods - Represents a way to change the value of a property inside a struct or enum.
struct Student {
    var name: String
    var grade: Int
    var isActive: Bool

    mutating func graduate() {
        self.grade += 1
    }

    mutating func activate() {
        self.isActive = true
    }

    mutating func deactivate() {
        self.isActive = false
    }

    mutating func changeName(name: String) {
        self.name = name
    }

    mutating func changeName(name: String, lastName: String) {
        self.name = "\(name) \(lastName)"
    }

    func printStudent() {
        print("Name: \(self.name)")
        print("Grade: \(self.grade)")
        print("Is Active: \(self.isActive)")
    }
}

var student = Student(name: "John", grade: 1, isActive: true)
student.activate()
student.graduate()
student.changeName(name: "Borba")
student.changeName(name: "Borba", lastName: "André")

student.printStudent()
