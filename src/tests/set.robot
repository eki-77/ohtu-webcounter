*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When user set counter to value it is that value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa
