component RotateGreeting {
    connect Greeting.Store exposing { nextGreeting }

    fun render {
        <Ui.Button 
            type="primary"
            onClick={handleClick}
            size={Ui.Size::Px(20)}
            label="Rotate Greeting!" />
    }

    fun handleClick(event : Html.Event) {
        nextGreeting()
    }
}