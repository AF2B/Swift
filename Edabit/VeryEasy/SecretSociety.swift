func societyName(_ arrNames: [String]) -> String {
    let societyName: [String.Element] = arrNames.map { $0.first! }
    return String(societyName.sorted())
}

func societyName2(_ arrNames: [String]) -> String {
    let firstLetters = arrNames.map { $0.prefix(1) }
    let sortedLetters = firstLetters.sorted()
    let societyName = sortedLetters.joined()
    return societyName
}

func testCases() {
    let tests: [Bool] = [
        societyName2(["Adam", "Sarah", "Malcolm"]) == "AMS",
        societyName2(["Harry", "Newt", "Luna", "Cho"]) == "CHLN",
        societyName2(["Phoebe", "Chandler", "Rachel", "Ross", "Monica", "Joey"]) == "CJMPRR"
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed!")
    } else {
        print("Not all test cases passed!")
    }
}

testCases()