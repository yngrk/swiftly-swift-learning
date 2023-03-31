
/*
    Defines an Array of multiple String entries, some of which are duplicates
    outputes the count of the Array, also the count of unique entries.
 */
print("--- return number of entries and number of unique entries")

let arr: [String] = ["One", "Two", "Three", "Four", "One", "Three"]
let arrToSet: Set<String> = Set(arr)

print("arr := \(arr)")
print("arr has \(arr.count) entries.")
print("arr has \(arrToSet.count) unique entries.")

print("---")

