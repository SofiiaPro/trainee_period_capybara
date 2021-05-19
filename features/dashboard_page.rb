require "capybara/rspec"

def get_dashboard_elements
  @plugins_page_name = "Plugins"
  @comments_page_name = "Comments"
  @plugin_name = "Akismet Anti-Spam"
  @comments_status = "Approved"

  @wordpress_icon_button = find(:id, "wp-admin-bar-wp-logo")
  @plugins_menu_item  = find(:id, "menu-plugins")
  @akismet_plugin_button = find(:id, "activate-akismet")
  @comments_menu_item = find(:id, "menu-comments")
  @comments_approved_status = find(:xpath, "//ul[@class='subsubsub']//li[@class ='approved']")
  @add_content_button = find(:id, "#wp-admin-bar-new-content")
  @popup_menu_close_button = find(:xpath, "//div[@class='components-modal__content']//button[@aria-label = 'Close dialog']")
  @title_textarea = find(:id, "post-title-0")
end