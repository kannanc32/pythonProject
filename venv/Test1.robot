*** settings ***
Library   Selenium2Library
Suite Setup  Open Browser   ${URL}   ${BROWSER}
Suite Teardown  Close All Browsers

*** variables ***
${URL}   https://www.google.com
${BROWSER}   Chrome

${search_form}  css=form[name=f]
${search_query}  css=input[name=q]
${search_term}  Lamdatest

*** Test Cases ***
Google search update
   Maximize Browser Window
   Wait Until Element Is Visible  ${search_query}
   Input Text  ${search_query}  ${EMPTY}
   Input Text  ${search_query}  ${search_term}
   Submit Form


