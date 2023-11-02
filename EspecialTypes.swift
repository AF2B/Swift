// Here you can find every especial type in Swift programming language.

// 1. Character
// A Character is a single-character string literal, written as one or more characters enclosed in single quotes.
let character: Character = "a"
print(character)

// 2. Tuples
// Tuples group multiple values into a single compound value.
let coordinates: (Int, Int) = (x: 22, y: 33)
print(coordinates)

// 3. Enum result T
enum Result<T> {
    case success(T)
    case failure(Error)
}

// 4. Never
// The Never type represents values that never occur. For example, this function’s return type is marked as Never, which means that it always triggers a runtime error if it is executed:
func crash() -> Never {
    fatalError("Something very, very bad happened")
}

// 5. weak
// weak is a keyword that can be used to declare a weak reference to an object.
