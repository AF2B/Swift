func returnNegative(_ number: Int) -> Int {
    return number < 0 ? number : -number
}

func testCases() {
    let test1: Bool = returnNegative(4) == -4
    let test2: Bool = returnNegative(-5) == -5
    let test3: Bool = returnNegative(0) == 0
    let test4: Bool = returnNegative(1) == -1

    if test1 && test2 && test3 && test4 {
        print("All tests passed")
    } else {
        print("Not all tests passed")
    }
}

testCases()