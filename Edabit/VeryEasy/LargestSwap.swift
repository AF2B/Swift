func largestSwap(_ number: Int) -> Bool {
    let reversed: Int = Int(String(String(number).reversed()))!
    return number >= reversed
}

func testCases() {
    let tests: [Bool] = [
        largestSwap(27) == false,
        largestSwap(43) == true
    ]

    if tests.allSatisfy({ $0 }) {
        print("All tests passed")
    } else {
        print("Some tests failed")
    }
}

testCases()