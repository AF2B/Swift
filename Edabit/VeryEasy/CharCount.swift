func charCount(_ letter: String, _ word: String) -> Int {
    let letters: [Substring] = word.split(separator: "")
    var count = 0
    for value in letters {
        if value == letter {
            count += 1
        }
    }
    return count
}

func testCases() {
    let tests: [Bool] = [
        charCount("a", "edabit") == 1,
        charCount("c", "Chamber of secrets") == 1,
        charCount("b", "big fat bubble") == 4,
        charCount("x", "I am the One") == 0,
        charCount("b", "Borba") == 1
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed!")
    } else {
        print("Some test cases failed!")
    }
}

testCases()
