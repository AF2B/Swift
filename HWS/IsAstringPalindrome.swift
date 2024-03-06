/*
    Is a string a palindrome?

    Write a function that accepts a String as its only parameter, and returns true If the string reads the same when
    reversed, ignoring case.

    Sample input and output
    - The string "rotator" should return true.
    - The string "Rats live on no evil star" should return true.
    - The string "Never odd or even" should return false; even though the letters are the same in reverse the spaces are in different places.
    - The string "Hello, world" should return false because it reads "dlrow ,olleH" backwards.
*/

func isPalindrome(_ input: String) -> Bool {
    let reversedString: ReversedCollection<String> = input.reversed()

    if input.lowercased() == String(reversedString).lowercased() {
        return true
    } else {
        return false
    }
}

func testCases() {
    let tests: [Bool] = [
        isPalindrome("rotator") == true,
        isPalindrome("Rats live on no evil star") == true,
        isPalindrome("Never odd or even") == false,
        isPalindrome("Hello, world") == false
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed")
    } else {
        print("Test cases failed")
    }
}

testCases()
