store Greeting.Store {
    state counter = 0
    state greeting = "Hello"

    fun nextGreeting : Promise(Never, Void) {
        case(counter) {
            0 => next { counter = nextCounter, greeting = "Hello" }
            1 => next { counter = nextCounter, greeting = "Howdy" }
            2 => next { counter = nextCounter, greeting = "Greetings" }
            3 => next { counter = nextCounter, greeting = "Hola" }
            4 => next { counter = nextCounter, greeting = "Welcome" }
            => next { counter = 0, greeting = "Hello"}
        }
    } where {
        nextCounter = (counter + 1) % 5
    }

    fun sayGoodbye(): Promise(Never, Void) {
        next { counter = -1, greeting = "Goodbye. You will now be known as" }
    }

}