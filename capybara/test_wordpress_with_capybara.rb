require "capybara/rspec"
require "webdrivers"

feature "Wordpress test", type: :feature do
  plugins_page_name = "Plugins"
  comments_page_name = "Comments"
  plugin_name = "Akismet Anti-Spam"
  comments_status = "Approved"

  home_page_url = "https://s1.demo.opensourcecms.com/wordpress/wp-login.php?redirect_to=https%3A%2F%2Fs1"
  + ".demo.opensourcecms.com%2Fwordpress%2Fwp-admin%2Fabout.php&reauth=1"

  Capybara.run_server = false
  Capybara.default_driver = :selenium_chrome
  Capybara.app_host = home_page_url

  def login()
    visit "/"
    login_input = find(:xpath, "//input[@id='user_login']")
    login_input.click
    fill_in "Username", with: "opensourcecms"
    password_input = find(:xpath, "//input[@id='user_pass']")
    password_input.click
    fill_in "Password", with: "opensourcecms"
    find(:xpath, "//input[@id='wp-submit']").send_keys :enter
  end

  before(:each) do
    login()
  end

  scenario "Verify that user can navigate to the #{plugins_page_name} Page from Dashboard Panel and activate the plugins
 #{plugin_name}" do
    plugins_menu_item = find(:xpath, "//div[@id='adminmenuwrap']//li[@id='menu-plugins']")
    plugins_menu_item.click
    expect(page).to have_content("Plugins")
    akismet_plugin_name = find(:xpath, "//a[@id='activate-akismet']")
    akismet_plugin_name.click
    expect(page).to have_content("Set up your Akismet account")
  end

  scenario "Verify that user can navigate to #{comments_page_name} from Dashboard Panel and choose #{comments_status}
  status" do
    comments_menu_item = find(:xpath, "//div[@id='adminmenumain']//li[@id='menu-comments']")
    comments_menu_item.click
    expect(page).to have_content("Comments")
    comments_approved_status = find(:xpath, "//ul[@class='subsubsub']//li[@class ='approved']")
    comments_approved_status.click
  end

  scenario "Verify that clicking on wordpress_icon_button on the navigation menu redirects to the expected page" do
    wordpress_icon_button = find(:xpath, "//li[@id='wp-admin-bar-wp-logo']")
    wordpress_icon_button.click
    expect(page).to have_content("WordPress")
  end

  scenario "Verify that user can write text on post by clicking on the add_content_button on the navigation menu" do
    add_content_button = find(:xpath, "//li[@id='wp-admin-bar-new-content']")
    add_content_button.click
    popup_menu_close_button = find(:xpath, "//div[@class='components-modal__content']
//button[@aria-label = 'Close dialog']")
    popup_menu_close_button.click
    title_textarea = find(:xpath, "//textarea[@id='post-title-0']")
    title_textarea.click
    fill_in "title", with: "ruby test"
    expect(page).to have_content("ruby test")
  end
end
