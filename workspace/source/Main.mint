component Main {
  style app {
    justify-content: center;
    flex-direction: column;
    align-items: center;
    display: flex;

    
    height: 100vh;
    width: 100vw;

    font-family: Open Sans;
    font-weight: bold;
  }

  fun render : Html {
    <div::app>
      <Logo/>

      <Authenticator/>

      <Greeting/>

      <RotateGreeting/>

      <Logout/>
    </div>
  }
}
