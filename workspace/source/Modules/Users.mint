module Users {

    fun authenticateUser(user: User) : User {
        if (user == INVALID) {
            User("Invalid User", false)
        } else {
            user
        }
    }

    fun logOutWithGoodbye(removeUser: Function(Promise(Never, Void)), sayGoodbye: Function(Promise(Never, Void))) {
        sequence {
            sayGoodbye()
            removeUser()
        }
    }

    const INVALID = User("Gabe", true)
}

record User {
    name: String,
    authenticated: Bool
}