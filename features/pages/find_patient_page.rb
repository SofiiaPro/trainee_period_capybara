class FindPatientPage
  attr_accessor :patient_name_field, :identifier, :name, :gender, :age, :birthday

  def initialize(browser)
    @browser = browser
    @patient_name_field = @browser.text_field(id: "patient-search")
    @identifier_field = @browser.text_field(text: "Identifier")
    @name_field = @browser.text_field(text: "Name")
    @gender_field = @browser.text_field(text: "Gender")
    @age_field = @browser.text_field(text: "Age")
    @birthday_field = @browser.text_field(text: "Birthdate")
  end

  def enter_patient_name(patient_name)
    @patient_name_field.set patient_name
  end

  def check_required_columns(identifier, name, gender, age, birthdate)
    if @identifier_field == identifier || (@name_field = name || @gender_field == gender || (@age_field = age ||
      (@birthday_field = birthdate)))
    end
  end
end

