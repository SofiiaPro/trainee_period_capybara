class HomePage
  attr_accessor :find_patient_record, :active_visits, :register_patient, :capture_vitals, :schedule_appointment,
    :reports, :data_management, :configure_metadata, :system_administration

  def initialize(browser)
    @browser = browser
    @find_patient_record = @browser.element(text: "Find Patient Record")
    @active_visits = @browser.element(text: "Active Visits")
    @register_patient = @browser.element(text: "Register a patient")
    @capture_vitals = @browser.element(text: "Capture Vitals")
    @schedule_appointment = @browser.element(text: "Appointment Scheduling")
    @reports = @browser.element(text: "Reports")
    @data_management = @browser.element(text: "Reports")
    @configure_metadata = @browser.element(text: "Configure Metadata")
    @system_administration = @browser.element(text: "System Administration")
  end

  def navigate_to_find_patient_page
    @find_patient_record.click
  end
end
