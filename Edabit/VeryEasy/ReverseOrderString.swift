func reverse(_ phrase: String) -> String {
    return String(phrase.reversed())
}

func reverseImpl(_ phrase: String) -> String {
    var reversed: String = ""
    for char: Character in phrase {
        reversed = String(char) + reversed
    }
    return reversed
}

func testCase() {
    let tests: [Bool] = [
        reverse("Hello") == "olleH",
        reverse("World") == "dlroW",
        reverse("Edabit") == "tibadE",
        reverse("Apple") == "elppA",
        reverse("Banana") == "ananaB",

        reverseImpl("Hello") == "olleH",
        reverseImpl("World") == "dlroW",
        reverseImpl("Edabit") == "tibadE",
        reverseImpl("Apple") == "elppA",
        reverseImpl("Banana") == "ananaB"
    ]

    if tests.allSatisfy({ $0 }) {
        print("All tests passed")
    } else {
        print("Some tests failed")
    }
}

testCase()
