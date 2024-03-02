func dictionary(_ initialLetters: String, _ words: [String]) -> [String] {
    var result: [String] = []
    
    for word: String in words {
        if word.starts(with: initialLetters) {
            result.append(word) 
        }
    }
    
    if result.isEmpty {
        return []
    } else {
        return result
    }
}

func testCases() {
    let tests: [Bool] = [
        dictionary("bu", ["button", "breakfast", "border"]) == ["button"],
        dictionary("tri", ["triplet", "tries", "trip", "piano", "tree"]) == ["triplet", "tries", "trip"],
        dictionary("beau", ["pastry", "delicious", "name", "boring"]) == []
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed!")
    } else {
        print("Not all test cases passed!")
    }
}

testCases()