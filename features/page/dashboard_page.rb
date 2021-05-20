require "capybara/rspec"
require 'capybara/dsl'

class DashboardPage
  include Capybara::DSL

  def get_dashboard_elements_name
    @plugins_page_name = "Plugins"
    @comments_page_name = "Comments"
    @plugin_name = "Akismet Anti-Spam"
    @comments_status = "Approved"
  end

  def click_plugins_menu_item
    plugins_menu_item = find(:id, "menu-plugins").click
  end

  def click_akismet_plugin_button
    akismet_plugin_button = find(:id, "activate-akismet").click
  end

  def click_wordpress_button
    wordpress_icon_button = find(:id, "wp-admin-bar-wp-logo").click
  end

  def click_add_content_button
    add_content_button = find(:id, "wp-admin-bar-new-content")
  end

  def click_close_popup_menu
    popup_menu_close_button = find(:xpath, "//div[@class='components-modal__content']//button[@aria-label = 'Close
dialog']").click
  end

  def click_add_textarea_title
    title_textarea = find(:id, "post-title-0").click
  end

  def click_on_comments_menu_item
    comments_menu_item = find(:id, "menu-comments").click
  end

  def click_comments_approved_status
    comments_approved_status = find(:xpath, "//ul[@class='subsubsub']//li[@class ='approved']").click
  end
end
