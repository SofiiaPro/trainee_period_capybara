require "capybara/rspec"
require "webdrivers"
require "yaml"
require 'pry'
require "./spec_helper"
require "./common_methods"
require "./page/dashboard_page"
require "./page/login_page"

feature "Wordpress test", type: :feature do
  before(:each) do
    login
  end
  dashboard_page = DashboardPage.new

  scenario "Verify that user can navigate to the {@plugins_page_name} Page from Dashboard Panel and activate the
plugin: {@plugin_name}" do
    dashboard_page.click_plugins_menu_item
    expect(page).to have_content("Plugins")
    dashboard_page.click_akismet_plugin_button
    expect(page).to have_content("Set up your Akismet account")
  end

  scenario "Verify that user can navigate to #{@comments_page_name} from Dashboard Panel and choose #{@comments_status}
  status" do
    dashboard_page.click_on_comments_menu_item
    expect(page).to have_content("Comments")
    dashboard_page.click_comments_approved_status
  end

  scenario "Verify that clicking on wordpress_icon_button on the navigation menu redirects to the expected page" do
    dashboard_page.click_wordpress_button
    expect(page).to have_content("WordPress")
  end

  scenario "Verify that user can write text on post by clicking on the add_content_button on the navigation menu" do
    dashboard_page.click_add_content_button
    dashboard_page.click_close_popup_menu
    dashboard_page.click_add_textarea_title
    fill_in "title", with: "ruby test"
    expect(page).to have_content("ruby test")
  end
end
