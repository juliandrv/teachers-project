require 'test_helper'

class TutoringsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tutorings_index_url
    assert_response :success
  end

  test "should get show" do
    get tutorings_show_url
    assert_response :success
  end

  test "should get new" do
    get tutorings_new_url
    assert_response :success
  end

  test "should get edit" do
    get tutorings_edit_url
    assert_response :success
  end

  test "should get create" do
    get tutorings_create_url
    assert_response :success
  end

  test "should get update" do
    get tutorings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tutorings_destroy_url
    assert_response :success
  end

end
