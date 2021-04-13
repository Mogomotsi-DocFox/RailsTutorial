require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "GET #home renders the home page" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "GET #help renders the help page" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "GET #home renders the about page" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "GET #home renders the contact page" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "GET with the root url renders the home page" do
    get root_url
    assert_response :success
  end
end
