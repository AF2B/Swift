func nameShuffle(_ name: String) -> String {
    let nameArray: [Substring] = name.split(separator: " ")
    return "\(nameArray[1]) \(nameArray[0])"
}

func testCases() {
    let tests: [Bool] = [
        nameShuffle("Donald Trump") == "Trump Donald",
        nameShuffle("Rosie O'Donnell") == "O'Donnell Rosie",
        nameShuffle("Seymour Butts") == "Butts Seymour",
        nameShuffle("Ebony Greene") == "Greene Ebony",
        nameShuffle("Ken Kennedy") == "Kennedy Ken"
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed!")
    } else {
        print("Not all test cases passed!")
    }
}

testCases()