func unlucky13(_ sortedArray: [Int]) -> [Int] {
    let result: [Int] = sortedArray.filter { $0 % 13 != 0 }
    return result
}

func testCases() {
    let test1: Bool = unlucky13([53, 182, 435, 591, 637]) == [53, 435, 591]
    let test2: Bool = unlucky13([24, 316, 393, 458, 1279]) == [24, 316, 393, 458, 1279]
    let test3: Bool = unlucky13([104, 351, 455, 806, 871]) == []

    if test1 && test2 && test3 {
        print("All tests passed")
    } else {
        print("Not all tests passed")
    }
}

testCases()