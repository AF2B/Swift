func triArea(_ base: Int, _ height: Int) -> Int {
    let area = (base * height) / 2
    return area
}

func testCases() {
    let test1: Bool = triArea(3, 2) == 3
    let test2: Bool = triArea(7, 4) == 14
    let test3: Bool = triArea(10, 10) == 50
    let test4: Bool = triArea(0, 60) == 0
    
    if test1 && test2 && test3 && test4 {
        print("Test passed")
    } else {
        print("Test failed")
    }
}

testCases()