*** Settings ***
Library           Selenium2Library

*** Variables ***
${URL}            https://tera76:Wk3a5N@mga-rca-web-dev.tera76tools.it
${USERNAME}       tera76man4
${PASSWORD}       tera76man4
${PLATE}          FM392XT
${BIRTH}          09081986
${BUTTON_AVANTI}    //*[@id="__next"]/div/div[3]//*[text()='Avanti']    # xpath=//*[@id="__next"]/div/div[3]/div/div[2]/div/div[2]/div/div/div[2]/button
${BIRTHDATE_PRIVACY_FLAG}    xpath=//*[@id="__next"]/div/div[3]/div/div[2]/div/div[1]/div[4]/div/label/span
${QUEST_CHECK1_YES}    xpath=//*[@name="questioncompl_1"]/../span
${QUEST_CHECK2_YES}    xpath=//*[@name="questioncompl_2"]/../span
${QUEST_CHECK3_YES}    xpath=//*[@name="questioncompl_3"]/../span
${QUEST_CHECK4}    ${EMPTY}
${SPINNER}        class: Spinner_spinner__UPbvL    # class: Spinner_spinner__UPbvL. - //*[contains(concat(' ', @class, ' '), ' Spinner_spinner__ ')]
${QUEST_CHECK4_YES}    ${EMPTY}
${TERM_CHECK1_YES}    xpath=//*[@name="questionterm_1"]/../span
${TERM_CHECK2_YES}    xpath=//*[@name="questionterm_2"]/../span
${TERM_CHECK3_YES}    xpath=//*[@name="questionterm_3"]/../span
${BUTTON_CONCLUDI}    //*[@id="__next"]/div/div[3]//*[text()='Concludi e acquista']
${TNC_DISCAIMER}    //*[contains(text(), 'intermediario n. A000663580 Registro Unico')]    # i
${BUTTON_ANNULLA_ACQUISTO}    //*[text()='Annulla']
${BUTTON_PROFILO}    //*[text()='Profilo']
${BUTTON_ESCI}    //*[text()='Esci']
${PLATE_ACTIVE}    CF092YC
${BUTTON_DETTAGLI}    ${EMPTY}
${TIMEOUT_UNTIL}    60
${BUTTON_CAMBIA_RES}    //*[text()='Cambia residenza']
${BUTTON_CARICA_FILE}    //*[text()='Carica file']/..
${LOCALPATH_FILE1}    /Users/andreamatera/qa-robotframework-mga-web/testFile.jpg
${BUTTON_CHIUDI}    //*[text()='Chiudi']
${BUTTON_CONFIRM_CAMBIA_RES}    //*[@id="__next"]/div/div[3]/div[1]/div[4]/div[2]/div/div/div/div[2]/div[2]/div/div[2]/button
${BUTTON_SOSPENDI}    //*[text()='Sospendi polizza']
${BUTTON_CONFIRM_SOSPENDI}    //*[text()='Sospendi']
${BUTTON_CAMBIA_TARGA}    //*[text()='Cambia targa']
${BUTTON_CONFIRM_CAMBIA_TARGA}    //*[@id="__next"]/div/div[3]/div[1]/div[4]/div[2]/div/div/div/div[2]/div[2]/div/div[2]/button
${BUTTON_CAMBIA_VEICOLO}    //*[text()='Cambia veicolo']
${BUTTON_CONFIRM_CAMBIA_VEICOLO}    //*[@id="__next"]/div/div[3]/div[1]/div[4]/div[2]/div/div/div/div[2]/div[2]/div/div[2]/button
${BUTTON_VEICOLO_VENDUTO}    //*[text()='Veicolo venduto']
${BUTTON_ANNULLA_POLIZZA}    //*[@id="__next"]/div/div[3]/div[1]/div[4]/div[2]/div/div/div/div[2]/div[2]/div/div[2]/button
${BUTTON_VEICOLO_RUBATO}    //*[text()='Veicolo rubato']
${BUTTON_VEICOLO_ROTTAMATO}    //*[text()='Veicolo rottamato']

*** Test Cases ***
t0
    login with ${USERNAME} and ${PASSWORD}
    Select Plate ${PLATE}
    Click Calcola Preventivo
    Select Guida Esperta
    Click Avanti
    Set Birth Date ${BIRTH}
    Click Privacy Flag
    Click Avanti
    Select Premium Pack
    Click Avanti
    Click Avanti
    Click Avanti
    sleep    2
    Click Element    ${QUEST_CHECK1_YES}
    Click Element    ${QUEST_CHECK2_YES}
    Click Element    ${QUEST_CHECK3_YES}
    Click Avanti
    Click Element    ${TERM_CHECK1_YES}
    Click Element    ${TERM_CHECK2_YES}
    Scroll Element Into View    ${TNC_DISCAIMER}
    Click Element    ${TERM_CHECK3_YES}
    Click Concludi e Acquista
    Click Annulla Acquisto
    sleep    30
    [Teardown]    Close Browser

t01_more26_pack_happy
    login with ${USERNAME} and ${PASSWORD}
    Select Plate ${PLATE}
    Click Calcola Preventivo
    Select Guida Esperta
    Click Avanti
    Set Birth Date ${BIRTH}
    Click Privacy Flag
    Click Avanti
    Select Premium Pack
    Click Avanti
    Page Should Contain    Tipologia guida
    Page Should Contain    Esperta
    Click Avanti
    Click Avanti
    sleep    2
    Click Element    ${QUEST_CHECK1_YES}
    Click Element    ${QUEST_CHECK2_YES}
    Click Element    ${QUEST_CHECK3_YES}
    Click Avanti
    Click Element    ${TERM_CHECK1_YES}
    Click Element    ${TERM_CHECK2_YES}
    Scroll Element Into View    ${TNC_DISCAIMER}
    Click Element    ${TERM_CHECK3_YES}
    Click Concludi e Acquista
    Click Annulla Acquisto
    Go to Garage
    Logout
    [Teardown]    Close Browser

t02_less26_onlyRC_happy
    login with ${USERNAME} and ${PASSWORD}
    Select Plate ${PLATE}
    Click Calcola Preventivo
    Select Guida Esperta
    Select Guida Libera
    Click Avanti
    Set Birth Date ${BIRTH}
    Click Privacy Flag
    Click Avanti
    Select Premium Pack
    Select Solo RC Auto
    Click Avanti
    Page Should Contain    Tipologia guida
    Page Should Contain    Libera
    Click Avanti
    Click Avanti
    sleep    2
    Click Element    ${QUEST_CHECK1_YES}
    Click Element    ${QUEST_CHECK2_YES}
    Click Element    ${QUEST_CHECK3_YES}
    Click Avanti
    Click Element    ${TERM_CHECK1_YES}
    Click Element    ${TERM_CHECK2_YES}
    Scroll Element Into View    ${TNC_DISCAIMER}
    Click Element    ${TERM_CHECK3_YES}
    Click Concludi e Acquista
    Click Annulla Acquisto
    Go to Garage
    Logout
    [Teardown]    Close Browser

t03_logout_from_detail
    login with ${USERNAME} and ${PASSWORD}
    Select Plate ${PLATE_ACTIVE}
    Click Dettaglio polizza
    Logout
    [Teardown]    Close Browser

t04_Cambio_Residenza
    login with ${USERNAME} and ${PASSWORD}
    Select Plate ${PLATE_ACTIVE}
    Click Dettaglio polizza
    Click Element    ${BUTTON_CAMBIA_RES}
    Page Should Contain    Vuoi procedere con il cambio di residenza?
    Comment    Click Element    ${BUTTON_CARICA_FILE}
    Choose File    //*[contains(@class , 'PolicyActions_policy-actions__upload-input__')]    ${LOCALPATH_FILE1}
    Input Text    policy-action__textarea    test test test
    Click Element    //*[contains(@class , 'Checkbox_checkbox__checkmark__')]
    Click Element    ${BUTTON_CHIUDI}
    Click Element    ${BUTTON_CAMBIA_RES}
    Comment    Click Element    ${BUTTON_CARICA_FILE}
    Choose File    //*[contains(@class , 'PolicyActions_policy-actions__upload-input__')]    ${LOCALPATH_FILE1}
    Input Text    policy-action__textarea    test test test
    Click Element    //*[contains(@class , 'Checkbox_checkbox__checkmark__')]
    Click Element    ${BUTTON_CONFIRM_CAMBIA_RES}
    Wait Until Page Contains    Grazie, abbiamo preso in carico la tua richiesta.    ${TIMEOUT_UNTIL}
    Click Element    //*[text()='Conferma']
    Logout
    [Teardown]    Close Browser

t05_Sospendi_Polizza
    login with ${USERNAME} and ${PASSWORD}
    Select Plate ${PLATE_ACTIVE}
    Click Dettaglio polizza
    Click Element    ${BUTTON_SOSPENDI}
    Page Should Contain    Vuoi sospendere la tua polizza?
    Input Text    policy-action__date    01102025
    Input Text    policy-action__textarea    test test test
    Click Element    ${BUTTON_CHIUDI}
    Click Element    ${BUTTON_SOSPENDI}
    Input Text    policy-action__date    01102025
    Input Text    policy-action__textarea    test test test
    Click Element    ${BUTTON_CONFIRM_SOSPENDI}
    Wait Until Page Contains    Grazie, abbiamo preso in carico la tua richiesta.    ${TIMEOUT_UNTIL}
    Click Element    //*[text()='Conferma']
    Logout
    [Teardown]    Close Browser

t06_Cambio_Targa
    login with ${USERNAME} and ${PASSWORD}
    Select Plate ${PLATE_ACTIVE}
    Click Dettaglio polizza
    Click Element    ${BUTTON_CAMBIA_TARGA}
    Page Should Contain    Vuoi cambiare targa?
    Choose File    //*[contains(@class , 'PolicyActions_policy-actions__upload-input__')]    ${LOCALPATH_FILE1}
    Input Text    policy-action__textarea    test test test
    Click Element    ${BUTTON_CHIUDI}
    Click Element    ${BUTTON_CAMBIA_TARGA}
    Choose File    //*[contains(@class , 'PolicyActions_policy-actions__upload-input__')]    ${LOCALPATH_FILE1}
    Input Text    policy-action__textarea    test test test
    Click Element    ${BUTTON_CONFIRM_CAMBIA_TARGA}
    Wait Until Page Contains    Grazie, abbiamo preso in carico la tua richiesta.    ${TIMEOUT_UNTIL}
    Click Element    //*[text()='Conferma']
    Logout
    [Teardown]    Close Browser

t07_Cambio_Veicolo
    login with ${USERNAME} and ${PASSWORD}
    Select Plate ${PLATE_ACTIVE}
    Click Dettaglio polizza
    Click Element    ${BUTTON_CAMBIA_VEICOLO}
    Page Should Contain    Vuoi cambiare veicolo?
    Click Element    //*[contains(@class , 'Select_select__')]
    Click Element    //*[contains(@data-value , 'change_vehicle_vehicle_sold')]
    Choose File    //*[contains(@class , 'PolicyActions_policy-actions__upload-input__')]    ${LOCALPATH_FILE1}
    Input Text    policy-action__textarea    test test test
    Click Element    //*[contains(@class , 'Checkbox_checkbox__checkmark__')]
    Click Element    ${BUTTON_CHIUDI}
    Click Element    ${BUTTON_CAMBIA_VEICOLO}
    Click Element    //*[contains(@class , 'Select_select__')]
    Click Element    //*[contains(@data-value , 'change_vehicle_vehicle_sold')]
    Choose File    //*[contains(@class , 'PolicyActions_policy-actions__upload-input__')]    ${LOCALPATH_FILE1}
    Input Text    policy-action__textarea    test test test
    Click Element    //*[contains(@class , 'Checkbox_checkbox__checkmark__')]
    Click Element    ${BUTTON_CONFIRM_CAMBIA_VEICOLO}
    Wait Until Page Contains    Grazie, abbiamo preso in carico la tua richiesta.    ${TIMEOUT_UNTIL}
    Click Element    //*[text()='Conferma']
    Logout
    [Teardown]    Close Browser

t09_Veicolo_Venduto
    login with ${USERNAME} and ${PASSWORD}
    Select Plate ${PLATE_ACTIVE}
    Click Dettaglio polizza
    Click Element    ${BUTTON_VEICOLO_VENDUTO}
    Page Should Contain    Vuoi annullare la polizza perché hai venduto il tuo veicolo?
    Choose File    //*[contains(@class , 'PolicyActions_policy-actions__upload-input__')]    ${LOCALPATH_FILE1}
    Input Text    policy-action__textarea    test test test
    Click Element    //*[contains(@class , 'Checkbox_checkbox__checkmark__')]
    Click Element    ${BUTTON_CHIUDI}
    Click Element    ${BUTTON_VEICOLO_VENDUTO}
    Comment    Click Element    ${BUTTON_CARICA_FILE}
    Choose File    //*[contains(@class , 'PolicyActions_policy-actions__upload-input__')]    ${LOCALPATH_FILE1}
    Input Text    policy-action__textarea    test test test
    Click Element    //*[contains(@class , 'Checkbox_checkbox__checkmark__')]
    Click Element    ${BUTTON_ANNULLA_POLIZZA}
    Wait Until Page Contains    Grazie, abbiamo preso in carico la tua richiesta.    ${TIMEOUT_UNTIL}
    Click Element    //*[text()='Conferma']
    Logout
    [Teardown]    Close Browser

t10_Veicolo_Rottamato
    login with ${USERNAME} and ${PASSWORD}
    Select Plate ${PLATE_ACTIVE}
    Click Dettaglio polizza
    Click Element    ${BUTTON_VEICOLO_ROTTAMATO}
    Page Should Contain    Vuoi annullare la polizza perché hai rottamato il tuo veicolo?
    Choose File    //*[contains(@class , 'PolicyActions_policy-actions__upload-input__')]    ${LOCALPATH_FILE1}
    Input Text    policy-action__textarea    test test test
    Click Element    //*[contains(@class , 'Checkbox_checkbox__checkmark__')]
    Click Element    ${BUTTON_CHIUDI}
    Click Element    ${BUTTON_VEICOLO_ROTTAMATO}
    Comment    Click Element    ${BUTTON_CARICA_FILE}
    Choose File    //*[contains(@class , 'PolicyActions_policy-actions__upload-input__')]    ${LOCALPATH_FILE1}
    Input Text    policy-action__textarea    test test test
    Click Element    //*[contains(@class , 'Checkbox_checkbox__checkmark__')]
    Click Element    ${BUTTON_ANNULLA_POLIZZA}
    Wait Until Page Contains    Grazie, abbiamo preso in carico la tua richiesta.    ${TIMEOUT_UNTIL}
    Click Element    //*[text()='Conferma']
    Logout
    [Teardown]    Close Browser

t11_Veicolo_Rubato
    login with ${USERNAME} and ${PASSWORD}
    Select Plate ${PLATE_ACTIVE}
    Click Dettaglio polizza
    Click Element    ${BUTTON_VEICOLO_RUBATO}
    Page Should Contain    Vuoi annullare la polizza perché il tuo veicolo è stato rubato?
    Choose File    //*[contains(@class , 'PolicyActions_policy-actions__upload-input__')]    ${LOCALPATH_FILE1}
    Input Text    policy-action__textarea    test test test
    Click Element    //*[contains(@class , 'Checkbox_checkbox__checkmark__')]
    Click Element    ${BUTTON_CHIUDI}
    Click Element    ${BUTTON_VEICOLO_RUBATO}
    Comment    Click Element    ${BUTTON_CARICA_FILE}
    Choose File    //*[contains(@class , 'PolicyActions_policy-actions__upload-input__')]    ${LOCALPATH_FILE1}
    Input Text    policy-action__textarea    test test test
    Click Element    //*[contains(@class , 'Checkbox_checkbox__checkmark__')]
    Click Element    ${BUTTON_ANNULLA_POLIZZA}
    Wait Until Page Contains    Grazie, abbiamo preso in carico la tua richiesta.    ${TIMEOUT_UNTIL}
    Click Element    //*[text()='Conferma']
    Logout
    [Teardown]    Close Browser

*** Keywords ***
Set Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --disable-infobars
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --headless
    ${excluded}    Create List    enable-automation
    Call Method    ${options}    add_experimental_option    excludeSwitches    ${excluded}
    Call Method    ${options}    add_experimental_option    useAutomationExtension    ${FALSE}
    Comment    Call Method    ${options}    add_experimental_option    credentials_enable_service    ${FALSE}
    Comment    Call Method    ${options}    add_experimental_option    password_manager_enabled    ${FALSE}
    Create WebDriver    Chrome    chrome_options=${options}
    Set Window Size    2560 \ \    2048
    Maximize Browser Window

login with ${user} and ${pass}
    Set Chrome Options
    Go to    ${URL}
    delete all cookies
    Sleep    2
    Wait Until Element Is Enabled    xpath=//*[@id="__next"]/div[2]/div/div/div/div[2]/button[2]    ${TIMEOUT_UNTIL}
    Click Element    xpath=//*[@id="__next"]/div[2]/div/div/div/div[2]/button[2]
    Click Element    xpath=//*[@id="__next"]/div[1]/div[2]/div[1]/div[1]/div[2]/a
    Wait Until Element Is Enabled    username    5
    Input Text    username    ${username}
    Input Text    password    ${password}
    Click Button    xpath=//*[@id="root"]/div/div/div/div/div[1]/div/div/form/div[4]/button
    Wait Until Element Is Enabled    xpath=//*[@id="__next"]/div/div[3]/div[1]/div/div[1]/div/div/div[3]    60

Select Plate ${plate}
    FOR    ${INDEX}    IN RANGE    0    30
        ${IsElementVisible} =    Run Keyword And Return Status    Page Should Contain    ${PLATE}
        Run keyword if    ${IsElementVisible}    and Exit For Loop
        Click Element    xpath=//*[@id="__next"]/div/div[3]/div[1]/div/div[1]/div/div/div[3]
    END
    Click Element    xpath=//*[text()='${PLATE}']

Set Birth Date ${birthDate}
    Wait Until Element Is Enabled    owner_birth_date    ${TIMEOUT_UNTIL}
    Input Text    owner_birth_date    ${BIRTH}

Click Avanti
    Wait Until Element Is Enabled    ${BUTTON_AVANTI}    ${TIMEOUT_UNTIL}
    Wait Until Element Is Not Visible    ${SPINNER}    ${TIMEOUT_UNTIL}
    Click Button    ${BUTTON_AVANTI}

Select Guida Esperta
    Wait Until Element Is Enabled    xpath=//*[text()='Più di 26 anni']    ${TIMEOUT_UNTIL}
    Click Element    xpath=//*[text()='Più di 26 anni']

Select Premium Pack
    Wait Until Element Is Visible    xpath=//*[text()='Proteggi chi guida e la tua auto']    ${TIMEOUT_UNTIL}
    sleep    2
    click element    xpath=//*[text()='Proteggi chi guida e la tua auto']/..

Click Calcola Preventivo
    Click Element    xpath=//*[text()='Calcola un preventivo']

Click Privacy Flag
    Click Element    ${BIRTHDATE_PRIVACY_FLAG}

Click Concludi e Acquista
    Wait Until Element Is Enabled    ${BUTTON_CONCLUDI}    ${TIMEOUT_UNTIL}
    Click Button    ${BUTTON_CONCLUDI}

Click Annulla Acquisto
    Wait Until Element Is Enabled    ${BUTTON_ANNULLA_ACQUISTO}    15
    Click Button    ${BUTTON_ANNULLA_ACQUISTO}

Logout
    Wait Until Element Is Enabled    ${BUTTON_PROFILO}    ${TIMEOUT_UNTIL}
    Wait Until Element Is Not Visible    ${SPINNER}    ${TIMEOUT_UNTIL}
    Click Button    ${BUTTON_PROFILO}
    Click Button    ${BUTTON_ESCI}
    Wait Until Page Contains    Entra nell'area clienti tera76    ${TIMEOUT_UNTIL}

Click Dettaglio polizza
    Click Element    xpath=//*[text()='Dettaglio polizza']
    Wait Until Page Contains    Riepilogo

Go to Garage
    go to    ${URL}/garage

Select Guida Libera
    Wait Until Element Is Enabled    xpath=//*[text()='Meno di 26 anni']    ${TIMEOUT_UNTIL}
    Click Element    xpath=//*[text()='Meno di 26 anni']

Select Solo RC Auto
    Wait Until Element Is Visible    xpath=//*[text()='Solo RC AUTO']    ${TIMEOUT_UNTIL}
    sleep    2
    click element    xpath=//*[text()='Solo RC AUTO']
