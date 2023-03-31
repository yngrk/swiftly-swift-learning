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

let string = "this is a string"

let multiline_string =
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

let strLength = string.count
let uppercaseStr = string.uppercased()

let beginsWith = string.hasPrefix("this is") // true
let endsWith = string.hasSuffix("banana") // false

/*
    INTEGERS
 */

var intVar = 10
intVar = intVar + 5 // intVar = 15
intVar += 5 // intVar = 20

/*
    ADDITIONAL INTEGER METHODS
 */

let checkMultiple = intVar.isMultiple(of: 5) // true

/*
    DECIMALS
 */

let decVar = 0.1 // is of type Double
let flVar: Float = 0.1 // type can be explicitly defined

/*
    BOOLEANS
 */

let isTrue = true
let isFalse = !true

/*
    ADDITIONAL BOOLEAN METHODS
 */

var gameOver = false
gameOver.toggle() // gameOver = true


/*
    JOINING STRINGS AND STRING INTERPOLATION
 */

let firstPart = "Hello "
let secondPart = " World!"
let partsJoined = firstPart + secondPart // Hello World!

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action // Haters gonna hate

let name = "Taylor"
let age = 26
let message = "My name is \(name) and I'm \(age) years old"
// My name is Taylor and I'm 26 years old

let strCalc = "5 + 5 = \(5 + 5)" // 5 + 5 = 10


/*
    ARRAYS
 */

var nums = [1, 2, 3, 4, 5]
var strs = ["One", "Two", "Three"]

let four = nums[3]

nums.append(6) // nums = [1, 2, 3, 4, 5, 6]
strs.append("Four") // str = ["One", "Two", "Three", "Four"]

// let notAllowed = nums + strs
// Binary operator '+' cannot be applied to operands of type '[Int]' and '[String]'

let anotherNums = [7]
let allowedArrAdd = nums + anotherNums

/*
    ARRAY DECLARATION FOR EMPTY ARRAYS
 */

let altArr = Array<Int>()
let betterAltArr = [Int]()


/*
    ADDITIONAL ARRAY METHOD
 */

let numsCount = nums.count
let numsContains = nums.contains(2)
let strsContains = strs.contains("One")

nums.remove(at: 2)

nums.sorted(); nums.reversed();

nums.removeAll()


/*
    DICTIONARIES
 */

let dictEx = [
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

let aSet = Set(["One", "Two", "Three"])
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
