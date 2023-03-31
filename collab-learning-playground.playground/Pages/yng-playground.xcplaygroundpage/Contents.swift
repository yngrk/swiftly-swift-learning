import Cocoa

func arrayUniqueCounter<T: Hashable>(arr: [T]) -> String {
    /*
        Defines an Array of multiple String entries, some of which are duplicates
        outputes the count of the Array, also the count of unique entries.
     */

    let arrToSet = Set(arr);
    
    return "total: \(arr.count) unique: \(arrToSet.count)"
}

func fizzBuzz(max: Int) {
    /*
        Classic FizzBuzz
     */
    
    for i in 1...max {
        print(i.isMultiple(of: 5) && i.isMultiple(of: 3)
              ? "fizzbuzz"
              : i.isMultiple(of: 5)
              ? "buzz"
              : i.isMultiple(of: 3)
              ? "fizz"
              : String(i))
    }
}

func strContainSameLetters(a: String, b: String) -> Bool {
    /*
        Compares two strings:
        if both contain the same letters -> true
        case insensitive
     */
    return a.lowercased().sorted() == b.lowercased().sorted()
}

func pythagoras(a: Double, b: Double) -> Double {
    return sqrt(pow(a, 2) + pow(b, 2))
}

enum CalcIntSqrtError: Error {
    case outOfBounds, noRoot
}

func calcIntSqrt(of num: Int) throws -> Int {
    /*
        Takes in an integer from 1 to 10000
        returns the integer root if it exists
     */
    
    if num > 10000 || num < 1 {
        throw CalcIntSqrtError.outOfBounds
    }
    
    var i = 1
    while i * i != num  {
        if (i > 10000) {
            throw CalcIntSqrtError.noRoot
        }
        i += 1
    }
    
    return i
}

//do {
//    let res = try calcIntSqrt(of: 1512)
//    print(res)
//} catch CalcIntSqrtError.outOfBounds {
//    print("Error: input is out of bounds")
//} catch CalcIntSqrtError.noRoot {
//    print("Error: input does not have an integer root")
//} catch {
//    print("Error: \(error.localizedDescription)")
//}
