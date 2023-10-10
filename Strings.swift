import Foundation

// Here you can find every common used String method in Swift language and learn how to use them.
// 1. String length
// To get the length of a string, use the count property or the count method.
let strLength = "Hello, Swift!"
print(strLength.count)

// 2. String append
// To append a string to another string without using += operator.
var strAppend = "Hello, Swift"
strAppend.append(Character("!"))
print(strAppend)

// 3. String interpolation
// To interpolate a variable into a string.
let name = "Swift"
let strInterpolation = "Hello, \(name)!"

// 4. String split
// To split a string into an array of substrings.
let strSplit = "Hello, Swift!"
let strSplitArray = strSplit.split(separator: " ")
print(strSplitArray)

// 5. String trim
// To trim a string.
let strTrim = " Hello, Swift! "
let strTrimmed = strTrim.trimmingCharacters(in: .whitespaces)
print(strTrimmed)

// 6. String uppercase/lowercase
// To convert a string to uppercase or lowercase.
let strCase = "Hello, Swift!"
let strUppercased = strCase.uppercased()
let strLowercased = strCase.lowercased()

// 7. String replace
// To replace a substring with another string.
let strReplace = "Hello, Objective-C!"
let strReplaced = strReplace.replacingOccurrences(of: "Objective-C", with: "Swift")
print(strReplaced)

// 8. String contains
// To check if a string contains another string.
let strContains = "Hello, Swift!"
let strContained = strContains.contains("Swift")
print(strContained)

// 9. String compare
// To compare two strings.
let strCompare1 = "Hello, Swift!"
let strCompare2 = "Hello, Objective-C!"
let strCompareResult = strCompare1.compare(strCompare2)
print(strCompareResult)

// 10. String compare result
if strCompareResult == .orderedAscending {
    print("strCompare1 < strCompare2")
} else if strCompareResult == .orderedSame {
    print("strCompare1 == strCompare2")
} else if strCompareResult == .orderedDescending {
    print("strCompare1 > strCompare2")
}

// 11. String index
// To get the index of a character in a string.
let strIndex = "Hello, Swift!"
let index = strIndex.firstIndex(of: ",")!
print(index)
let indexPosition = index.utf16Offset(in: strIndex)
print(indexPosition)

// 12. String substring
// To get a substring from a string.
let strSubstring = "Hello, Swift!"
let indexSubstring = strSubstring.firstIndex(of: ",")!
let substring = strSubstring[..<indexSubstring]
print(substring)

// 13. String prefix/suffix
// To check if a string has a prefix or suffix.
let strPrefixSuffix = "Hello, Swift!"
let hasPrefix = strPrefixSuffix.hasPrefix("Hello")
let hasSuffix = strPrefixSuffix.hasSuffix("Swift!")
print(hasPrefix)
print(hasSuffix)

// 14. String to array
// To convert a string to an array of characters.
let strToArray = "Hello, Swift!"
let strArray = Array(strToArray)
print(strArray)

// 15. String to data
// To convert a string to data.
let strToData = "Hello, Swift!"
let data = strToData.data(using: .utf8)!
print(data)

// 16. String from data
// To convert data to a string.
let dataToString = String(data: data, encoding: .utf8)!
print(dataToString)

// 17. String to URL
// To convert a string to URL.
let strToURL = "https://www.google.com"
let url = URL(string: strToURL)!
print(url)

// 18. String from URL
// To convert URL to a string.
let urlToString = url.absoluteString
print(urlToString)

// 19. String to number
// To convert a string to a number.
let strToNumber = "123"
let number = Int(strToNumber)!
print(number)

// 20. String from number
// To convert a number to a string.
let numberToString = String(number)
print(numberToString)

// 21. String to array of lines
// To convert a string to an array of lines.
let strToLines = "Hello\nSwift!"
let lines = strToLines.components(separatedBy: .newlines)
print(lines)