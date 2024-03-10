func evenOddTransform(_ arr: [Int], _ n: Int) -> [Int] {
    let plusTwo: Int = 2
    let minusTwo: Int = -2
    var result: [Int] = [Int]()

    for number: Int in arr {
        if number % 2 == 0 {
            result.append(number + (minusTwo * n))
        } else {
            result.append(number + (plusTwo * n))
        }
    }

    return result
}

func testCases() {
    let ARR_TEST1: [Int] = [3, 4, 9]
    let ARR_TEST2: [Int] = [0, 0, 0]
    let ARR_TEST3: [Int] = [1, 2, 3]
    
    let tests: [Bool] = [
        evenOddTransform(ARR_TEST1, 3) == [9, -2, 15],
        evenOddTransform(ARR_TEST2, 10) == [-20, -20, -20],
        evenOddTransform(ARR_TEST3, 1) == [3, 0, 5],
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed!")
    } else {
        print("Some test cases failed!")
    }
}

testCases()