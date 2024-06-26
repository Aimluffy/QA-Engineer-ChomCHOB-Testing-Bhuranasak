#This Positive test case "nejavu.robot" is using resource from resources folder.
#Bhuranasak code this test
#Thank you for checking my code.
*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../resources/resources.robot

*** Variables ***
${URL}    https://www.nejavu.com
${BROWSER}    Chrome

*** Test Cases ***
TC001 Open Browser To Nejavu
    Open Browser To Nejavu

TC002 Close Banner If Present
    Close Banner If Present
    #Clear Cart If Not Empty
    Sleep    1s

TC003 Navigate To Cartoons Page
    Navigate To Cartoons Page

TC004 Get Book Names In First Row
    ${book_names}=    Get Book Names In First Row
    Set Suite Variable    ${book_names}

TC005 Add All Books In First Row To Cart
    Add All Books In First Row To Cart

TC006 Go To Cart Page
    Go To Cart Page

TC007 Verify Cart Contents
    Verify Cart Contents    ${book_names}

TC008 Delete All Books From Cart
    Delete All Books From Cart

TC009 Verify Cart Badge Is Zero
    Verify Cart Badge Is Zero
    [Teardown]    Close Browser

*** Keywords ***
Strip String
    [Arguments]    ${string}
    ${stripped_string}=    Evaluate    '${string}'.strip()
    [Return]    ${stripped_string}