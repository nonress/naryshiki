require 'test_helper'

class BasicPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'なりしき'
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", @base_title
  end
end
