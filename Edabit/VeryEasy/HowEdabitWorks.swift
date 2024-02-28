func hello() -> String {
    return "hello edabit.com"
}

func testCases() {
    let result: Bool = hello() == "hello edabit.com"
    
    if result {
        print("Test passed: Result is equal to 'hello edabit.com'")
    } else {
        print("Test failed: Result is not equal to 'hello edabit.com'")
    }
}

testCases()