func testJackpot(_ arr: [String]) -> Bool {
    guard arr.count == 4 else {
        return false
    }

    let firstValue: String = arr[0]

    for value in arr {
        if value != firstValue {
            return false
        }
    }
    return true
}

func testCases() {
    let tests: [Bool] = [
        testJackpot(["@", "@", "@", "@"]) == true,
        testJackpot(["abc", "abc", "abc", "abc"]) == true,
        testJackpot(["SS", "SS", "SS", "SS"]) == true,
        testJackpot(["&&", "&", "&&&", "&&&&"]) == false,
        testJackpot(["SS", "SS", "SS", "Ss"]) == false,
        testJackpot(["ZZ"]) == false
    ]

    if tests.allSatisfy({ $0 }) {
        print("All tests passed")
    } else {
        print("Some tests failed")
    }
}

testCases()
