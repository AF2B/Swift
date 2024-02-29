func makePair(_ x: Int, _ y: Int) -> [Int] {
    return [x, y]
}

func testCases() {
    let test1: Bool = makePair(1, 2) == [1, 2]
    let test2: Bool = makePair(51, 21) == [51, 21]
    let test3: Bool = makePair(512124, 215) == [512124, 215]
    
    if test1 && test2 && test3 {
        print("All tests passed")
    } else {
        print("Not all tests passed")
    }
}

testCases()