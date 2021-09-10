component Authenticator {
    connect User.Store exposing { user, setUser }
    connect Greeting.Store exposing { nextGreeting }

    fun render {
        <div>
            <Ui.Input
                placeholder="Enter your first name"
                onChange={handleChange}
                size={Ui.Size::Px(16)}
                inputDelay={500}
                value={username} />
        </div>
    }

    fun handleChange(value: String) : Promise(Never, Void) {
        sequence {
            setUser(value)
            nextGreeting()
        }
    }

    get username {
        case (value) {
            "annonymous" => ""
            => value
        }
    } where {
        value = user.name
    }
}