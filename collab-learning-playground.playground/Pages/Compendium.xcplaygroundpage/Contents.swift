import Cocoa


// variable definitions
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


