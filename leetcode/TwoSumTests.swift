import XCTest

class TwoSumTests: XCTestCase {
    
    func testTwoSum() {
        let nums = [2, 7, 11, 15]
        let target = 9
        let expected = [0, 1]
        XCTAssertEqual(twoSum(nums, target), expected)
    }
    
    func testTwoSumEmpty() {
        let nums = [Int]()
        let target = 9
        let expected = [Int]()
        XCTAssertEqual(twoSum(nums, target), expected)
    }
    
    func testTwoSumNoSolution() {
        let nums = [2, 7, 11, 15]
        let target = 8
        let expected = [Int]()
        XCTAssertEqual(twoSum(nums, target), expected)
    }
    
    func testTwoSumDuplicateSolution() {
        let nums = [3, 2, 4]
        let target = 6
        let expected = [1, 2]
        XCTAssertEqual(twoSum(nums, target), expected)
    }
}