func doubleLetters(_ word: String) -> Bool {
    let letters: [String.Element] = Array(word)
    for i: Int in 0..<letters.count - 1 {
        if letters[i] == letters[i + 1] {
            return true
        }
    }
    return false
}

func testCases() {
    let wordTest1: String = "borba"
    let wordTest2: String = "yummy"
    let wordTest3: String = "orange"
    let wordTest4: String = "munchkin"

    let tests: [Bool] = [
        doubleLetters(wordTest1) == false,
        doubleLetters(wordTest2) == true,
        doubleLetters(wordTest3) == false,
        doubleLetters(wordTest4) == false
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed!")
    } else {
        print("Some test cases failed!")
    }
}

testCases()