func legalAge(_ number: Int) -> Bool {
    guard number % 2 == 0 else {
        return false
    }
    return true
}

func testCases() {
    let test1: Bool = legalAge(22) == true
    let test2: Bool = legalAge(18) == true
    let test3: Bool = legalAge(21) == false

    if test1 && test2 && test3 {
        print("All tests passed")
    } else {
        print("Not all tests passed")
    }
}

testCases()