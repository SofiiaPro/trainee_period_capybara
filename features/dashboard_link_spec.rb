require "capybara/rspec"
require "webdrivers"
require "yaml"
require "./spec_helper"
require "./common_methods"
require "./dashboard_page"
require "./login_page"

feature "Wordpress test", type: :feature do
  before(:each) do
    login
    get_dashboard_elements
  end

  scenario "Verify that user can navigate to the #{@plugins_page_name} Page from Dashboard Panel and activate the
plugins #{@plugin_name}" do
    @plugins_menu_item.click
    expect(page).to have_content("Plugins")
    @akismet_plugin_button.click
    expect(page).to have_content("Set up your Akismet account")
  end

  scenario "Verify that user can navigate to #{@comments_page_name} from Dashboard Panel and choose #{@comments_status}
  status" do
    @comments_menu_item.click
    expect(page).to have_content("Comments")
    @comments_approved_status.click
  end

  scenario "Verify that clicking on wordpress_icon_button on the navigation menu redirects to the expected page" do
    @wordpress_icon_button.click
    expect(page).to have_content("WordPress")
  end

  scenario "Verify that user can write text on post by clicking on the add_content_button on the navigation menu" do
    @add_content_button.click
    @popup_menu_close_button.click
    @title_textarea.click
    fill_in "title", with: "ruby test"
    expect(page).to have_content("ruby test")
  end
end
