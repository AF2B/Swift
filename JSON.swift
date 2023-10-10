// Here you're will find every common used JSON method in Swift and learn how work with.
// You'll see some examples to how to build an struct JSON with simple dictionary and arrays.

let items = ["item1", "item2", "item3"]
let jsonDictionary: [String: Any] = ["data": items]

do {
    let jsonData = try JSONSerialization.data(withJSONObject: jsonDictionary)
    
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
} catch {
    print("Error converting to JSON: \(error)")
}