require 'capybara/rspec'
require 'capybara/dsl'

class DashboardPage
  include Capybara::DSL

  def get_dashboard_elements_name
    @plugins_page_title = "Plugins"
    @comments_page_title = "Comments"
    @plugin_name = "Akismet Anti-Spam"
    @comments_status = "Approved"
    @wordpress_home_page_title = "WordPress"
    @post_title = "ruby test"
  end

  def click_plugins_menu_item
    find(:id, "menu-plugins").click
  end

  def click_akismet_plugin_button
    find(:id, "activate-akismet").click
  end

  def click_wordpress_button
    find(:id, "wp-admin-bar-wp-logo").click
  end

  def click_add_content_button
    find(:id, "wp-admin-bar-new-content")
  end

  def click_close_popup_menu
    find(:xpath, "//div[@class='components-modal__content']//button[@aria-label = 'Close
dialog']").click
  end

  def click_add_textarea_title
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
