store User.Store {
    state user: User = User("annonymous", false)

    fun setUser(username: String): Promise(Never, Void) {
        Users.authenticateUser(newUser)
        |> getUser
        
    } where {
        newUser = User(username, true)
    }

    fun getUser(newUser: User) : Promise(Never, Void) {
        case (newUser.name) {
            "" => next { user = User("annonymous", false) }
            => next {user = newUser }
        }
    }

    fun logOut: Promise(Never, Void) {
        next { user = User("annonymous", false) }
    }

}