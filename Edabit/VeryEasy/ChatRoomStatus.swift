func chatroomStatus(_ users: [String]) -> String {
    let userCount: Int = users.count

    switch userCount {
    case 0:
        return "no one online"
    case 1:
        return "\(users[0]) online"
    case 2:
        return "\(users[0]) and \(users[1]) online"
    default:
        return "\(users[0]), \(users[1]) and \(userCount - 2) more online"
    }
}

func testCases() {
    let NO_ONE_ONLINE: String = "no one online"
    let ONE_PERSON_ONLINE: String = "paRIE_to online"
    let TWO_PEOPLE_ONLINE: String = "s234f and mailbox2 online"
    let MULTIPLE_PEOPLE_ONLINE: String = "pap_ier44, townieBOY and 4 more online"

    let test1 = chatroomStatus([])
    let test2 = chatroomStatus(["paRIE_to"])
    let test3 = chatroomStatus(["s234f", "mailbox2"])
    let test4 = chatroomStatus(["pap_ier44", "townieBOY", "panda321", "motor_bike5", "sandwichmaker833", "violinist91"])

    let tests: [Bool] = [
        test1 == NO_ONE_ONLINE,
        test2 == ONE_PERSON_ONLINE,
        test3 == TWO_PEOPLE_ONLINE,
        test4 == MULTIPLE_PEOPLE_ONLINE
    ]

    if tests.allSatisfy({ $0 }) {
        print("All test cases passed!")
    } else {
        print("Some test cases failed!")
    }
}

testCases()