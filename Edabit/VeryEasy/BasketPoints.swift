func points(_ twoPointers: Int, _ threePointers: Int) -> Int {
    let twoPointersScore: Int = 2 * twoPointers
    let threePointersScore: Int = 3 * threePointers
    return twoPointersScore + threePointersScore
}

func testCases() {
    let test1: Bool = points(1, 1) == 5
    let test2: Bool = points(7, 5) == 29
    let test3: Bool = points(38, 8) == 100
    let test4: Bool = points(2, 3) == 13
    
    if test1 && test2 && test3 && test4 {
        print("Test passed")
    } else {
        print("Test failed")
    }
}

testCases()