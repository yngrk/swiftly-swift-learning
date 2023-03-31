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
