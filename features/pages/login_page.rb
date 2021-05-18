class LoginPage
  attr_accessor :loginTab, :username, :password, :login_button, :session_location

  def initialize(browser)
    @browser = browser
    @username = @browser.text_field(id: "username")
    @password = @browser.text_field(id: "property.rb")
    @login_button = @browser.input(id: "loginButton")
    @session_location = @browser.li(text: "Outpatient Clinic")
  end

  def navigate_to_login_page
    @browser.goto "https://demo.openmrs.org/openmrs/login.htm"
  end

  def enter_username(username)
    @username.set username
  end

  def enter_password(password)
    @password.set password
  end

  def choose_location
    @session_location.click
  end

  def click_on_login_button
    @login_button.click
  end

  def verify_home_page_header(text)
    page_output = @browser.element(text: "Logged in")
    if page_output == text
      puts "A user is on home page"
    end
  end
end
