func comp(_ x: String, _ y: String) -> Bool {
    if x.count == y.count {
        return true
    }
    return false
}

func testCases() {
    let tests: [Bool] = [
        comp("AB", "CD") == true,
        comp("ABC", "DE") == false,
        comp("hello", "edabit") == false
    ]

    if tests.allSatisfy({ $0 }) {
        print("All tests passed")
    } else {
        print("Not all tests passed")
    }
}

testCases()