class Web_element_util
  attr_accessor :login_input, :password_input, :plugins_menu_item, :akismet_plugin_name, :comments_menu_item,
                :comments_approved_status, :wordpress_icon_button, :add_content_button, :add_content_button,
                :popup_menu_close_button, :title_textarea

  def initialize()
    @login_input = find(:xpath, "//input[@id='user_login']")
    @password_input = find(:xpath, "//input[@id='user_pass']")
    @plugins_menu_item = find(:xpath, "//div[@id='adminmenuwrap']//li[@id='menu-plugins']")
    @akismet_plugin_name = find(:xpath, "//a[@id='activate-akismet']")
    @comments_menu_item = find(:xpath, "//div[@id='adminmenumain']//li[@id='menu-comments']")
    @comments_approved_status = find(:xpath, "//ul[@class='subsubsub']//li[@class ='approved']")
    @wordpress_icon_button = find(:xpath, "//li[@id='wp-admin-bar-wp-logo']")
    @add_content_button = find(:xpath, "//li[@id='wp-admin-bar-new-content']")
    @popup_menu_close_button = find(:xpath, "//div[@class='components-modal__content']
//button[@aria-label = 'Close dialog']")
    @title_textarea = find(:xpath, "//textarea[@id='post-title-0']")
  end
  end