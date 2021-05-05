require "test_helper"

class MicropostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micropost = microposts(:most_recent)
  end

  test "GET #microposts renders the microposts page" do
    get microposts_url
    assert_response :success
  end

  test "GET #new_micropost renders the new page" do
    get new_micropost_url
    assert_response :success
  end

  test "GET #new_micropost renders a specific post" do
    get micropost_url(@micropost)
    assert_response :success
  end

  test "GET #renders the edit page" do
    get edit_micropost_url(@micropost)
    assert_response :success
  end


  test "DELETE #delete the micropost" do
    assert_difference('Micropost.count', -1) do
      delete micropost_url(@micropost)
    end

    assert_redirected_to microposts_url
  end
end
