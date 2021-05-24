require 'capybara/rspec'
require 'webdrivers'
require "yaml"
require 'pry'
require_relative './spec_helper'
require_relative './common_methods'
require_relative '../pages/dashboard_page'
require_relative '../pages/login_page'
require_relative './web_element_util'

feature "Wordpress test", type: :feature do
  before(:each) do
    login
  end

  let(:dashboard_page) { DashboardPage.new }
  scenario "Verify that user can navigate to the #{$plugins_page_title} Page from Dashboard Panel and activate the
plugin: #{$plugin_name}" do
    dashboard_page.click_plugins_menu_item
    expect(page).to have_content($plugins_page_title)
    dashboard_page.click_akismet_plugin_button
    expect(page).to have_content("Set up your Akismet account")
  end

  scenario "Verify that user can navigate to #{$comments_page_title} from Dashboard Panel and choose #{$comments_status}
  status" do
    dashboard_page.click_on_comments_menu_item
    expect(page).to have_content($comments_page_title)
    dashboard_page.click_comments_approved_status
    expect(dashboard_page.selected_status).should be
  end

  scenario "Verify that clicking on wordpress_icon_button on the navigation menu redirects to the Wordpress home
pages" do
    dashboard_page.click_wordpress_button
    expect(page).to have_content($wordpress_home_page_title)
  end

  scenario "Verify that user can write text on post by clicking on the add_content_button on the navigation menu" do
    dashboard_page.add_content_button
    dashboard_page.close_popup_menu
    dashboard_page.add_textarea_title
    fill_in "title", with: $post_title
    expect(page).to have_content($post_title)
  end
end
