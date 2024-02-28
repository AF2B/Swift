func circuitPower(_ voltage: Int, _ currentVoltage: Int) -> Int {
    return voltage * currentVoltage
}

func testCases() {
    let test1: Bool = circuitPower(110, 3) == 330
    let test2: Bool = circuitPower(230, 10) == 2300
    let test3: Bool = circuitPower(480, 20) == 9600
    let test4: Bool = circuitPower(230, 10) == 2300
    
    if test1 && test2 && test3 && test4 {
        print("Test passed")
    } else {
        print("Test failed")
    }
}

testCases()