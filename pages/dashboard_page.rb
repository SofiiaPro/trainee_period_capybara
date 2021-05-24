require 'capybara/rspec'
require 'capybara/dsl'

class DashboardPage
  include Capybara::DSL

  def click_plugins_menu_item
    find(:id, "menu-plugins").click
  end

  def click_akismet_plugin_button
    find(:id, "activate-akismet").click
  end

  def click_wordpress_button
    find(:id, "wp-admin-bar-wp-logo").click
  end

  def add_content_button
    find(:id, "wp-admin-bar-new-content")
  end

  def close_popup_menu
    find(:xpath, "//div[@class='components-modal__content']//button[@aria-label = 'Close
dialog']").click
  end

  def add_textarea_title
    find(:id, "post-title-0").click
  end

  def click_on_comments_menu_item
    find(:id, "menu-comments").click
  end

  def click_comments_approved_status
    find(:xpath, "//ul[@class='subsubsub']//li[@class ='approved']").click
  end

  def check_selected_status
    selected_approved_status = find(:xpath, "//a[@class = 'current' and contains(text(), 'Approved')]")
    expect(selected_approved_status).to true
  end
end
