func likeOrDislike(_ ytLikeDislikeButton: [String]) -> String {
    var currentState: String = "Nothing"

    for buttonInput: String in ytLikeDislikeButton {
        if buttonInput == currentState {
            currentState = "Nothing"
        } else {
            currentState = buttonInput
        }
    }
    return currentState
}

func testCases() {
    let DISLIKE: String = "Dislike"
    let LIKE: String = "Like"
    let NOTHING: String = "Nothing"

    let tests: [Bool] = [
        likeOrDislike([DISLIKE]) == DISLIKE,
        likeOrDislike([LIKE, LIKE]) == NOTHING,
        likeOrDislike([DISLIKE, LIKE]) == LIKE,
        likeOrDislike([LIKE, DISLIKE, DISLIKE]) == NOTHING,
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed!")
    } else {
        print("Some test cases failed!")
    }
}

testCases()
