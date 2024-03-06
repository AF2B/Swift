/*
    Challenge 1: Are the letters unique?
    write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.

    Sample input and output
    - The string "No duplicates" should return true.
    - The string "abcdefghijklmnopqrstuvwxyz" should return true.
    - The string "AaBbCc" should return true because the challenge is case-sensitive.
    - The string "Hello, world" should return false because of the double Ls and Os.
*/

func challenge1(input: String) -> Bool {
    var letters: [Character] = [Character]()

    for letter: Character in input {
        if letters.contains(letter) {
            return false
        } else { 
            letters.append(letter)
        }
    }
    return true
}

func testCases() {
    let tests: [Bool] = [
        challenge1(input: "No duplicates") == true,
        challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true,
        challenge1(input: "AaBbCc") == true,
        challenge1(input: "Hello, world") == false
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed")
    } else {
        print("Some test cases failed")
    }
}

testCases()