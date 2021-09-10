component Greeting {
    connect Greeting.Store exposing { greeting as storeGreeting }
    connect User.Store exposing {user}

    get greeting {
        "#{storeGreeting} #{user.name}"
    }

    fun render {
        <div>
            <{ greeting }>
        </div>
    }
}