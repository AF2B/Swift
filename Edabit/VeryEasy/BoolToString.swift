func boolToString(_ flag: Bool) -> String {
    return String(flag)
}

func testCases() {
    let test1: Bool = boolToString(true) == "true"
    let test2: Bool = boolToString(false) == "false"
    
    if test1 && test2 {
        print("All tests passed")
    } else {
        print("Not all tests passed")
    }
}

testCases()