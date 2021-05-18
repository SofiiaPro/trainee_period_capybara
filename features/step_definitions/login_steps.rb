Given(/^A user on the login page$/) do
  @LoginPage = LoginPage.new(@browser)
  @LoginPage.navigate_to_login_page
end
And(/^A user fill in Username with "([^"]*)"$/) do |arg|
  @LoginPage.enter_username(arg.to_s)
end

And(/^A user fill in Password with "([^"]*)"$/) do |arg|
  @LoginPage.enter_password(arg.to_s)
end

And(/^A user choose Outpatient Clinic location for the session$/) do
  @LoginPage.choose_location
end

When(/^A user press Login in button$/) do
  @LoginPage.click_on_login_button
end

Then(/^A user should be on the users home page and see "([^"]*)"$/) do |arg|
  @LoginPage.verify_home_page_header(arg.to_s)
end
