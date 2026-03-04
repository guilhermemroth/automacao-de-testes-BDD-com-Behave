from behave import given, when, then
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

SAUCEDEMO_URL = "https://www.saucedemo.com/"

def _wait(context, seconds=10):
    return WebDriverWait(context.driver, seconds)

def _username_input(context):
    return _wait(context).until(EC.visibility_of_element_located((By.ID, "user-name")))

def _password_input(context):
    return _wait(context).until(EC.visibility_of_element_located((By.ID, "password")))

def _login_button(context):
    return _wait(context).until(EC.element_to_be_clickable((By.ID, "login-button")))

def _error_message(context):
    # mensagem de erro do login no SauceDemo
    return _wait(context).until(EC.visibility_of_element_located((By.CSS_SELECTOR, "h3[data-test='error']")))

def _open_login(context):
    # Cria driver 1x por cenário
    if not hasattr(context, "driver"):
        options = webdriver.ChromeOptions()
        # Se quiser rodar sem abrir janela, descomente:
        # options.add_argument("--headless=new")
        options.add_argument("--window-size=1280,720")
        context.driver = webdriver.Chrome(options=options)

    context.driver.get(SAUCEDEMO_URL)

def _close_driver(context):
    if hasattr(context, "driver"):
        try:
            context.driver.quit()
        finally:
            delattr(context, "driver")


# ----------- GIVEN -----------

@given('that user acesses the login page on Saucedemo')
def step_access_login(context):
    _open_login(context)

@given('inserts a valid username "{username}"')
@given('inserts an invalid username "{username}"')
@given('inserts a username "{username}"')
def step_insert_username(context, username):
    el = _username_input(context)
    el.clear()
    if username:
       el.send_keys(username)

@given("inserts a username")
def step_insert_default_username(context):
    # usado nos seus cenários "inserts a username" (sem aspas)
    step_insert_username(context, "standard_user")

@given('inserts a valid password "{password}"')
@given('inserts an invalid password "{password}"')
@given('inserts a password "{password}"')
def step_insert_password(context, password):
    el = _password_input(context)
    el.clear()
    if password:
        el.send_keys(password)

@given("inserts a password")
@given("inserts a valid password")
def step_insert_default_password(context):
    step_insert_password(context, "secret_sauce")

@given("doesn't insert a password")
@given("doesn't insert password")
def step_blank_password(context):
    el = _password_input(context)
    el.clear()

@given("doesn't insert a username")
@given("doesn't insert username")
def step_blank_username(context):
    el = _username_input(context)
    el.clear()


# ----------- WHEN -----------

@when("user clicks the login button")
def step_click_login(context):
    _login_button(context).click()


# ----------- THEN -----------

@then("user must stay in the login page")
def step_stay_on_login(context):
    # Continua no domínio e inputs existem
    assert "saucedemo.com" in context.driver.current_url
    # Se o login falhou, normalmente continua em / e mostra erro
    _username_input(context)  # garante que ainda está na tela de login

@then('show message "{message}"')
@then('an error message must show up saying "{message}"')
def step_validate_error_message(context, message):
    actual = _error_message(context).text.strip()
    assert actual == message, f"Expected: {message} | Actual: {actual}"

@then("user must go to the inventory page")
def step_go_inventory(context):
    _wait(context).until(EC.url_contains("/inventory.html"))

@then('must have in the URL "{path}"')
def step_url_contains(context, path):
    _wait(context).until(EC.url_contains(path))


# ----------- Cleanup automático por cenário -----------

def after_scenario(context, scenario):
    # Behave chama hooks se você colocar em environment.py,
    # mas deixei aqui a função pronta caso você queira migrar.
    pass