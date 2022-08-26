require "test_helper"

class StudentInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get student_info_show_url
    assert_response :success
  end

  test "should get index" do
    get student_info_index_url
    assert_response :success
  end
end
