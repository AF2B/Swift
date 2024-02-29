func animals(_ chickens: Int, _ cows: Int, _ pigs: Int) -> Int {
    let chickensLegs: Int = 2
    let cowsLegs: Int = 4
    let pigsLegs: Int = 4

    return (chickens * chickensLegs) + (cows * cowsLegs) + (pigs * pigsLegs)
}

func testCases() {
    let test1: Bool = animals(2, 3, 5) == 36
    let test2: Bool = animals(1, 2, 3) == 22
    let test3: Bool = animals(5, 2, 8) == 50
    let test4: Bool = animals(0, 0, 0) == 0
    let test5: Bool = animals(0, 1, 0) == 4
    
    if test1 && test2 && test3 && test4 && test5 {
        print("All tests passed")
    } else {
        print("Not all tests passed")
    }
}

testCases()