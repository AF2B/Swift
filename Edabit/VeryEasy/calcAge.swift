func calcAge(_ age: Int) -> Int {
    return age * 365
}

func testCases() {
    let test1: Bool = calcAge(65) == 23725
    let test2: Bool = calcAge(0) == 0
    let test3: Bool = calcAge(20) == 7300
    let test4: Bool = calcAge(10) == 3650
    
    if test1 && test2 && test3 && test4 {
        print("Test passed")
    } else {
        print("Test failed")
    }
}

testCases()