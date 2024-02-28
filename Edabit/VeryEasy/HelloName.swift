func helloName(_ name: String) -> String {
    return "Hello \(name)!"
}

func testCases() {
    let test1: Bool = helloName("Gerald") == "Hello Gerald!"
    let test2: Bool = helloName("Tiffany") == "Hello Tiffany!"
    let test3: Bool = helloName("Ed") == "Hello Ed!"
    let test4: Bool = helloName("Mary") == "Hello Mary!"
    
    if test1 && test2 && test3 && test4 {
        print("Test passed")
    } else {
        print("Test failed")
    }
}

testCases()