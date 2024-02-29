func divisibleByFive(_ number: Int) -> Bool {
    if number % 5 == 0 {
        return true
    } else {
        return false
    }
}

func testCases() {
    let test1: Bool = divisibleByFive(5) == true
    let test2: Bool = divisibleByFive(-55) == true
    let test3: Bool = divisibleByFive(37) == false

    if test1 && test2 && test3 {
        print("All tests passed")
    } else {
        print("Not all tests passed")
    }
}

testCases()