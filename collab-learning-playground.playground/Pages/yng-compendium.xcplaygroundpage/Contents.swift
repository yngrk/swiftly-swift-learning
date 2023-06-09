import Cocoa


/*
    VARIABLE DEFINITIONS
 */

var greeting = "Hello World!" // creates new mutable variable
greeting = "this works"

let constant = "This is a constant" // creates a constant
// constant = "this does not work"

/*
    semicolons are optional and only required when
    e.g defining multiple variables on one line
 */

/*
    STRINGS
 */

var string = "this is a string"

var multiline_string =
"""
this is a
multiline string
its important that
the three double quotes
are above and beneath
the multiline string
content
"""

/*
    ADDITIONAL METHODS FOR STRINGS
 */

var strLength = string.count
var uppercaseStr = string.uppercased()

var beginsWith = string.hasPrefix("this is") // true
var endsWith = string.hasSuffix("banana") // false

/*
    INTEGERS
 */

var intVar = 10
intVar = intVar + 5 // intVar = 15
intVar += 5 // intVar = 20

/*
    ADDITIONAL INTEGER METHODS
 */

var checkMultiple = intVar.isMultiple(of: 5) // true

/*
    DECIMALS
 */

var decVar = 0.1 // is of type Double
var flVar: Float = 0.1 // type can be explicitly defined

/*
    BOOLEANS
 */

var isTrue = true
var isFalse = !true

/*
    ADDITIONAL BOOLEAN METHODS
 */

var gameOver = false
gameOver.toggle() // gameOver = true


/*
    JOINING STRINGS AND STRING INTERPOLATION
 */

var firstPart = "Hello "
var secondPart = " World!"
var partsJoined = firstPart + secondPart // Hello World!

var people = "Haters"
var action = "hate"
var lyric = people + " gonna " + action // Haters gonna hate

var name = "Taylor"
var age = 26
var message = "My name is \(name) and I'm \(age) years old"
// My name is Taylor and I'm 26 years old

var strCalc = "5 + 5 = \(5 + 5)" // 5 + 5 = 10


/*
    ARRAYS
 */

var nums = [1, 2, 3, 4, 5]
var strs = ["One", "Two", "Three"]

var four = nums[3]

nums.append(6) // nums = [1, 2, 3, 4, 5, 6]
strs.append("Four") // str = ["One", "Two", "Three", "Four"]

// let notAllowed = nums + strs
// Binary operator '+' cannot be applied to operands of type '[Int]' and '[String]'

var anotherNums = [7]
var allowedArrAdd = nums + anotherNums

/*
    ARRAY DECLARATION FOR EMPTY ARRAYS
 */

var altArr = Array<Int>()
var betterAltArr = [Int]()


/*
    ADDITIONAL ARRAY METHOD
 */

var numsCount = nums.count
var numsContains = nums.contains(2)
var strsContains = strs.contains("One")

nums.remove(at: 2)

nums.sorted(); nums.reversed();

nums.removeAll()


/*
    DICTIONARIES
 */

var dictEx = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville",
] // like objects in javascript


var dictExplicit: [String: Int] = [
    "London": 2012,
    "Tokyo": 2021
]

dictExplicit["Rio de Janeiro"] = 2015
dictExplicit["Rio de Janeiro"] = 2016 // overwrite key value

var emptyDictExplicit = [String: Int]()

// print(dictEx["name"]) // Optional("Taylor Swift")
// throws warning, because this operation is not safe. Consider: dictEx["bobo"] - nil

// better way of accessing dictionary entries:
dictEx["name", default: "Unknown"] // Taylor Swift
dictEx["bobo", default: "Unknown"] // Unknown

dictEx.count
dictExplicit.removeValue(forKey: "Tokyo")
dictExplicit.removeAll()


/*
    SETS
    similar to arrays, but does not store duplicates
    and does not keep any specific order
 */

var aSet = Set(["One", "Two", "Three"])
var initSet = Set<String>()
initSet.insert("Item One")

aSet.contains("One") // much faster than arrays
aSet.count


/*
    ENUMS
 */

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

/*
    or:
    enum Weekday {
        case monday, tuesday, ...
    }
 */

var day = Weekday.monday
day = .tuesday
day = .wednesday
type(of: day)


/*
    TYPE ANNOTATIONS
 */

var surname = "Lasso" // type String is inferred
var surnameExplicit: String = "Lasso" // type String explicitly stated

var doubleNum = 0 // is Integer
var doubleNumExplicit: Double = 0 // is Decimal


var typeArr: [String] = ["Eh"]
var typeDict: [String: String] = ["key": "value", "anotherKey": "anotherValue"]
var typeSet: Set<String> = Set(["ayy"])


/*
    IF ELSE CONDITIONAL
 */

var someCondition = true
var anotherCondition = true

if someCondition && anotherCondition {
    // do something
} else if anotherCondition {
    // do something
} else {
    // do something
}

/*
    SWITCH STATEMENT
 */

var someDay = Weekday.monday

/*
    switch statement prints:
        monday
        tuesday
 */

switch someDay {
case .monday :
    print("monday")
    fallthrough
case .tuesday :
    print("tuesday")
case .wednesday:
    print("wednesday")
default:
    print("free")
}


/*
    TERNARY CONDITIONAL OPERATOR
 */

let sayMonday = someDay == .monday ? "it is monday" : "it is not monday";


/*
    FOR LOOPS
 */

var start = 1;
var end = 3;

for str in aSet{
    print(str)
}

for i in 1...10 {
    print(i)
} // 1, 2, 3, ... , 9, 10

for i in 1..<10 {
    print(i)
} // 1, 2, 3, ... , 9

for i in start...end {
    print(i)
} // 1, 2, 3

for _ in 1...3 { // when loop variable not needed
    print("hallo")
}

/*
    WHILE LOOPS
 */

var countdown = 5
while countdown > 0 {
    print(countdown)
    countdown -= 1
}

countdown = 5
repeat { // do...while equivalent
    print(countdown)
    countdown -= 1
} while countdown > 0

/*
    notes:
        continue and break work just like in java
 */


/*
    FUNCTIONS
 */

func thisIsAFunction(a: Int, b: Int) -> Int {
    return a + b
}
var funcRes = thisIsAFunction(a: 3, b: 5)

/*
    Output multiple values with tuples
    Arrays, Sets and Dictionaries also work
    outputting tuples dont require default values like in dictionaries
    because the function declares the output, so it is guaranteed
 */

func getUser() -> (firstName: String, lastName: String) {
    return (firstName: "Max", lastName: "Mustermann")
}

getUser().firstName
var (userFirstName, userLastName) = getUser()

func getUser2() -> (firstName: String, lastName: String) {
    return ("Max", "Mustermann")
}

getUser2().firstName

func getUser3() -> (String, String) {
    return ("Max", "Mustermann")
}

getUser3().0
getUser3().1

/*
    Customizing parameter labels in functions
 */

func isUppercased(str: String) -> Bool {
    return str == str.uppercased()
}

isUppercased(str: "COOL") // true

func isUppercased(_ str: String) -> Bool {
    return str == str.uppercased()
}

isUppercased("COOL") // true

func add(a: Int, b: Int) -> Int {
    return a + b
}

add(a: 3,b: 5) // 8

func add(_ a: Int, to b: Int) -> Int {
    return a + b
}

add(3, to: 5)

/*
    default values for function parameters
 */

func getNumber(_ num: Int = 10) -> Int {
    return num
}

getNumber() // 10


/*
    ERROR HANDLING
 */

// Define possible Errors
enum PasswordError: Error {
    case short, simple
}

// Define a function that can throw error
func checkPassword(_ passwd: String) throws -> String {
    if passwd.count < 5 {
        throw PasswordError.short
    }
    
    if passwd == "12345" {
        throw PasswordError.simple
    }
    
    return passwd.count < 8 ? "OK" : passwd.count < 10 ? "GOOD" : "EXCELLENT"
}

// Use function in a block that might throw errros
do {
    let myPw = "12345"
    let pwCheck = try checkPassword(myPw)
    print("My password is \(pwCheck)")
} catch PasswordError.short {
    print("Your password is too short")
} catch PasswordError.simple {
    print("Your password is too simple")
} catch { // this is a general catch block if all the others fail to catch
    print("Error: \(error.localizedDescription)")
}


/*
    CLOSURES
 */

strs // ["One", "Two", "Three", "Four"]
strs.sorted(by: {(a: String, b: String) -> Bool in
    return a < b // sorts alphabetically
}) // ["Four", "One", "Three", "Two"]


var clAdd = {(a: Int, b: Int) -> Int in
    return a + b
}

clAdd(1, 3) // no labels in arguments


// clAdd can be written like this (only for conceptual understanding)
func funcAdd(a: Int, b: Int) -> Int {
    return a + b
}

var clAdd2: (Int, Int) -> Int = funcAdd
clAdd2(1, 3)

/*
    several forms of shorthands for closures exist
 */

// the standard form
strs.filter({(str: String) -> Bool in // ["Two", "Three"]
    return str.hasPrefix("T")
})

// filter has input defined so closure knows what is expected
// so the type definition can be left out
// parens optional
strs.filter {str in // ["Two", "Three"]
    return str.hasPrefix("T")
}

// if only one line is to be returned then return keyword can be left out
// also parens are optional here
strs.filter {str in // ["Two", "Three"]
    str.hasPrefix("T")
}

// the ultimate form of gigachad programming
// parameters can be substituted with $0, $1, ... in the same order of args
strs.filter {$0.hasPrefix("T")}

/*
    Don't use the ultimate gigachad form with complex closures!
    Nobody knows what $6 is!
 */

/*
    STRUCTS
 */

struct Album {
    var title: String = "Untitled" // default value
    let artist: String
    var year: Int
    
    func printSummary() {
        print("\(title) \(year) by \(artist)")
    }
    
    /*
        functions that mutate the variables of a struct must me
        declared with the mutating keyword
     */
    mutating func setYearTo9999() {
        year = 9999
    }
}

let someAlbum = Album(title: "Hello", artist: "WTF", year: 2021)
var someUntitledAlbum = Album(artist: "me", year: 1888)
someUntitledAlbum.artist
someUntitledAlbum.year
someUntitledAlbum.setYearTo9999()
someUntitledAlbum.year
someUntitledAlbum.year = 5505
someUntitledAlbum.year

/*
    getters and setters
 */

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    // computed property
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            // newValue is a struct specific variable for the setter
            vacationAllocated = vacationTaken + newValue
        }
    }
}

/*
    property observers
 */

struct Game {
    var score = 0 {
        willSet {
            // executes before a change to score happens
        }
        didSet {
            // executes after a change to score happened
        }
    }
}

/*
    custom initializer
 */

struct Player {
    let name: String
    let number: Int
    
    // call: let player = Player(name: "playerName")
    init(name: String) {
        self.name = name
        self.number = Int.random(in: 1...20)
    }
    
    // call: let player = Player()
    init() {
        self.name = "anonymous"
        self.number = -1
    }
}

/*
    ACCESS CONTROL
    private - no access from outside struct
    fileprivate - no access from outside current file
    public - allow access from anywhere
 
    private(set) - selector: only read access (write access is private)
 */

struct BankAccount {
    private(set) var funds = 1000
    
    mutating func withdraw(amount: Int) {
        funds = funds - amount >= 0 ? funds - amount : funds
    }
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
}

/*
    STATIC PROPERTIES AND METHODS
    similar to static in java
 */

struct Stuffs {
    static var count = 0
    
    // static funcs can access static variables without Self.
    static func resetCount() {
        count = 0
    }

    init() {
        Self.count += 1
    }
}

/*
    self - instance
    Self - the Struct itself
 */

var stuff1 = Stuffs()
var stuff2 = Stuffs()
Stuffs.count // 2
