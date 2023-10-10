// Here you can find every common used Array method in Swift language and learn how to use them.

// 1. Array length
// To get the length of an array, use the count property or the isEmpty property.
let arrayLength = [1, 2, 3, 4, 5]
print(arrayLength.count)
print(arrayLength.isEmpty)

// 2. Array append
// To append an element to an array.
var arrayAppend = [1, 2, 3, 4, 5]
arrayAppend.append(6)
print(arrayAppend)

// 3. Array insert
// To insert an element into an array at a specified index.
var arrayInsert = [1, 2, 3, 4, 5]
arrayInsert.insert(6, at: 0)
print(arrayInsert)

// 4. Array remove
// To remove an element from an array at a specified index.
var arrayRemove = [1, 2, 3, 4, 5]
arrayRemove.remove(at: 0)
print(arrayRemove)

// 5. Array remove last
// To remove the last element from an array.
var arrayRemoveLast = [1, 2, 3, 4, 5]
arrayRemoveLast.removeLast()
print(arrayRemoveLast)

// 6. Array remove all
// To remove all elements from an array.
var arrayRemoveAll = [1, 2, 3, 4, 5]
arrayRemoveAll.removeAll()
print(arrayRemoveAll)

// 7. Array contains
// To check if an array contains an element.
let arrayContains = [1, 2, 3, 4, 5]
let arrayContained = arrayContains.contains(3)
print(arrayContained)

// 8. Array index
// To get the index of an element in an array.
let arrayIndex = [1, 2, 3, 4, 5]
if let index = arrayIndex.firstIndex(of: 3) {
    print(index)
}

// 9. Array filter
// To filter an array with a predicate function.
let arrayFilter = [1, 2, 3, 4, 5]
let arrayFiltered = arrayFilter.filter { $0 > 3 }
print(arrayFiltered)

// Or you can use the filter method with a closure.
let arrayFilteredWithClosure = arrayFilter.filter({ (element) -> Bool in
    return element > 3
})
print(arrayFilteredWithClosure)

// 10. Array map
// To map an array to another array with a transform function.
let arrayMap = [1, 2, 3, 4, 5]
let arrayMapped = arrayMap.map { $0 * 2 }
print(arrayMapped)

// Or you can use the map method with a closure.
let arrayMappedWithClosure = arrayMap.map({ (element) -> Int in
    return element * 2
})

// 11. Array reduce
// To reduce an array to a single value with a combine function.
let arrayReduce = [1, 2, 3, 4, 5]
let arrayReduced = arrayReduce.reduce(0, +)
print(arrayReduced)

// Or you can use the reduce method with a closure.
let arrayReducedWithClosure = arrayReduce.reduce(0, { (result, element) -> Int in
    return result + element
})
print(arrayReducedWithClosure)

// 12. Array sort
// To sort an array with a predicate function.
let arraySort = [1, 2, 3, 4, 5]
let arraySorted = arraySort.sorted { $0 > $1 }
print(arraySorted)

// Or you can use the sorted method with a closure.
let arraySortedWithClosure = arraySort.sorted(by: { (element1, element2) -> Bool in
    return element1 > element2
})
print(arraySortedWithClosure)

// 13. Array forEach
// To iterate over an array with a closure.
let arrayForEach = [1, 2, 3, 4, 5]
arrayForEach.forEach { print($0) }

// Or you can use the forEach method with a closure.
arrayForEach.forEach { (element) in
    print(element)
}

// 14. Array first
// To get the first element of an array.
let arrayFirst = [1, 2, 3, 4, 5]
let arrayFirstElement = arrayFirst.first!
print(arrayFirstElement)

// 15. Array last
// To get the last element of an array.
let arrayLast = [1, 2, 3, 4, 5]
let arrayLastElement = arrayLast.last!
print(arrayLastElement)

// 16. Array min
// To get the minimum element of an array.
let arrayMin = [1, 2, 3, 4, 5]
let arrayMinElement = arrayMin.min()!
print(arrayMinElement)

// OBS: I add "!" to the end of these methods to unwrap the optional value. You can use "if let" or "guard let" to unwrap the optional value too.
// Now, let's continue.

// 17. Array max
// To get the maximum element of an array.
let arrayMax = [1, 2, 3, 4, 5]
let arrayMaxElement = arrayMax.max()!
print(arrayMaxElement)

// 18. Array reverse
// To reverse an array.
let arrayReverse = [1, 2, 3, 4, 5]
let arrayReversed = Array(arrayReverse.reversed())
print(arrayReversed)

// 19. Array joined
// To join an array of strings into a single string.
let arrayJoined = ["Hello", "World"]
let arrayJoinedString = arrayJoined.joined(separator: " ")
print(arrayJoinedString)

// 20. Array enumerated
// To get an array of tuples with the index and the element.
let arrayEnumerated = [1, 2, 3, 4, 5]
let arrayEnumeratedTuples = Array(arrayEnumerated.enumerated())
print(arrayEnumeratedTuples)

// 21. Array enumerated map
// To get an array of tuples with the index and the element mapped.
let arrayEnumeratedMap = [1, 2, 3, 4, 5]
let arrayEnumeratedMapTuples = arrayEnumeratedMap.enumerated().map { (index, element) in
    return (index, element * 2)
}
print(arrayEnumeratedMapTuples)

// 22. Array enumerated forEach
// To iterate over an array of tuples with the index and the element.
let arrayEnumeratedForEach = [1, 2, 3, 4, 5]
arrayEnumeratedForEach.enumerated().forEach { (index, element) in
    print(index, element)
}