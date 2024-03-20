func lonelyInteger(_ arr: [Int]) -> Int {
    // ...
}

func testCases() {
    let TEST_CASE1 = [1, -1, 2, -2, 3]
    let TEST_CASE2 = [-3, 1, 2, 3, -1, -4, -2]
    let TEST_CASE3 = [-9, -105, -9, -9, -9, -9, 105]

    let tests: [Bool] = [
        lonelyInteger(TEST_CASE1) == 3,
        lonelyInteger(TEST_CASE2) == -4,
        lonelyInteger(TEST_CASE3) == -9
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed!")
    } else {
        print("All test cases did not pass!")
    }
}

testCases()
