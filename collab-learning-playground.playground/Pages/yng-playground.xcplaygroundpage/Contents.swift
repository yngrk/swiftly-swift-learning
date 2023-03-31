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
