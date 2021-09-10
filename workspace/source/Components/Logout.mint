component Logout {
    connect User.Store exposing { logOut, user }
    connect Greeting.Store exposing { sayGoodbye }

    fun render {
        <Ui.Button 
            type="danger"
            onClick={handleClick}
            size={Ui.Size::Px(16)}
            label="Log out" />
    }

    fun handleClick(event : Html.Event) {
        sequence {
            currentUsername = user.name
            completeLogout = Users.logOutWithGoodbye(logOut)
            Debug.log(completeLogout)
            completeLogout(sayGoodbye)
        }
        
    }
}