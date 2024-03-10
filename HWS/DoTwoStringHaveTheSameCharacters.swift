/*
    Do two strings contain the same characters?

    Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.

    Sample input and output
    - The strings "abca" and "abca" should return true.
    - The strings "abc" and "cba" should return true.
    - The strings "a1 b2" and "b 1 a 2" should return true.
    - The strings "abc" and "abca" should return false.
    - The strings "abc" and "Abc" should return false.
    - The strings "abc" and "cbAa" should return false.
*/

func doTwoStringHaveTheSameCharacters(_ input1: String, _ input2: String) -> Bool {
    var letters = [Character]()

    for letter: Character in input1 {
        letters.append(letter)
    }

    for letter in input2 {
        if letter == letters.first {
            return true
        } else {
            letters.dropFirst()
        }
    }

    return false
}

func testCases() {
    let tests: [Bool] = [
        doTwoStringHaveTheSameCharacters("abca", "abca") == true,
        doTwoStringHaveTheSameCharacters("abc", "cba") == true,
        doTwoStringHaveTheSameCharacters("a1 b2", "b 1 a 2") == true,
        doTwoStringHaveTheSameCharacters("abc", "abca") == false,
        doTwoStringHaveTheSameCharacters("abc", "Abc") == false,
        doTwoStringHaveTheSameCharacters("abc", "cbAa") == false
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed")
    } else {
        print("Test cases failed")
    }
}

testCases()
