func existsHigher(_ arr: [Int], _ target: Int) -> Bool {
    guard !arr.isEmpty else {
        return false
    }

    for number in arr {
        if number >= target {
            return true
        }
    }

    return false
}

func existsHigher2(_ arr: [Int], _ target: Int) -> Bool {
    guard !arr.isEmpty else {
        return false
    }

    return arr.max()! >= target
}

func existsHigher3(_ arr: [Int], _ target: Int) -> Bool {
    return arr.contains(where: { $0 >= target })
}

func testCases() {
    let tests: [Bool] = [
        existsHigher([5, 3, 15, 22, 4], 10) == true,
        existsHigher([1, 2, 3, 4, 5], 8) == false,
        existsHigher([4, 3, 3, 3, 2, 2, 2], 4) == true,
        existsHigher([2, 2, 2, 2], 5) == false,
        existsHigher([], 0) == false,

        existsHigher2([5, 3, 15, 22, 4], 10) == true,
        existsHigher2([1, 2, 3, 4, 5], 8) == false,
        existsHigher2([4, 3, 3, 3, 2, 2, 2], 4) == true,
        existsHigher2([2, 2, 2, 2], 5) == false,
        existsHigher2([], 0) == false,

        existsHigher3([5, 3, 15, 22, 4], 10) == true,
        existsHigher3([1, 2, 3, 4, 5], 8) == false,
        existsHigher3([4, 3, 3, 3, 2, 2, 2], 4) == true,
        existsHigher3([2, 2, 2, 2], 5) == false,
        existsHigher3([], 0) == false
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed!")
    } else {
        print("Some test cases failed!")
    }
}

testCases()