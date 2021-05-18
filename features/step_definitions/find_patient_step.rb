Given(/^A user on the home page$/) do
  @home_page = HomePage.new(@browser)
end

And(/^A user navigate to Find Patient Record$/) do
  @home_page.navigate_to_find_patient_page
end

And(/^A user fill Search Field with "([^"]*)"$/) do |arg|
  @find_patient_page = FindPatientPage.new(@browser)
  @find_patient_page.enter_patient_name(arg.to_s)
end

And(/^A user verify that table contains required columns "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)" "([^"]*)"$/) do
|arg1,arg2, arg3, arg4, arg5|
  @find_patient_page.check_required_columns (arg1.to_s), (arg2.to_s), (arg3.to_s), (arg4.to_s), ("#{arg5})")
end

When(/^A user verify that columns are not empty$/) do
  pending
end

Then(/^A user can see information about patient$/) do
end

