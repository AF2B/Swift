import Foundation

class Calculator {
    var completionHandlers: [(Int) -> Void] = []

    func calculate(_ operation: (Int, Int) -> Int, _ a: Int, _ b: Int, completionHandler: @escaping (Int) -> Void) {
        let result = operation(a, b)
        completionHandlers.append(completionHandler)
        completionHandler(result)
    }
}

let calculator = Calculator()

calculator.calculate(+, 5, 3) { result in
    print("O resultado da operação é \(result)")
}

calculator.completionHandlers.first?(10)

// Escaping challenges.

// Challenge 1: DelayedExecution

func delayedExecution(_ seconds: Int, completion: @escaping () -> Void) -> Void {
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(seconds)) {
        completion()
    }
}

delayedExecution(3) {
    print("Executed after 3 seconds")
}

// Challenge 2: FilterAsync

func filterAsync(_ arr: [Int], _ predicate: @escaping (Int) -> Bool, _ completion: @escaping ([Int]) -> Void) {
    DispatchQueue.global().async {
        let filteredArr: [Int] = arr.filter(predicate)
        DispatchQueue.main.async {
            completion(filteredArr)
        }
    }
}

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

filterAsync(numbers, { number in
    return number % 2 == 0
}) { filteredArr in
    print(filteredArr)
}