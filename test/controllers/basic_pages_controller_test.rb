require 'test_helper'

class BasicPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'なりしき'
  end

  test "should get home" do
    get basic_pages_home_url
    assert_response :success
    assert_select "title", @base_title
  end

  test 'should get help' do
    get basic_pages_help_url
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end
end
