func addition(_ x: Int, _ y: Int) -> Int {
    return x + y
}

func testCases() {
    let test1: Bool = addition(2, 3) == 5
    let test2: Bool = addition(-4, -6) == -10
    let test3: Bool = addition(-3, -6) == -9
    let test4: Bool = addition(7, 3) == 10
    
    if test1 && test2 && test3 && test4 {
        print("Test passed")
    } else {
        print("Test failed")
    }
}

testCases()