func convert(_ hours: Int, _ minutes: Int) -> Int {
    return (hours * 3600) + (minutes * 60)
}

func testCases() {
    let test1: Bool = convert(1, 3) == 3780
    let test2: Bool = convert(2, 0) == 7200
    let test3: Bool = convert(0, 0) == 0
    
    if test1 && test2 && test3 {
        print("All tests passed")
    } else {
        print("Not all tests passed")
    }
}

testCases()