func howManySeconds(_ hours: Int) -> Int {
    return hours * 60 * 60
}

func testCases() {
    let test1: Bool = howManySeconds(2) == 7200
    let test2: Bool = howManySeconds(10) == 36000
    let test3: Bool = howManySeconds(24) == 86400
    let test4: Bool = howManySeconds(36) == 129600
    
    if test1 && test2 && test3 && test4 {
        print("Test passed")
    } else {
        print("Test failed")
    }
}

testCases()