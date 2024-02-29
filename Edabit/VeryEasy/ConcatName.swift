func concatName(_ firstName: String, _ lastName: String) -> String {
    return "\(firstName), \(lastName)"
}

func testCases() {
    let test1: Bool = concatName("John", "Doe") == "John, Doe"
    let test2: Bool = concatName("First", "Last") == "First, Last"
    let test3: Bool = concatName("A", "B") == "A, B"
    
    if test1 && test2 && test3 {
        print("All tests passed")
    } else {
        print("Not all tests passed")
    }
}

testCases()