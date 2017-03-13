require 'test_helper'

class HttpartyTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @httparty_test = httparty_tests(:one)
  end

  test "should get index" do
    get httparty_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_httparty_test_url
    assert_response :success
  end

  test "should create httparty_test" do
    assert_difference('HttpartyTest.count') do
      post httparty_tests_url, params: { httparty_test: {  } }
    end

    assert_redirected_to httparty_test_url(HttpartyTest.last)
  end

  test "should show httparty_test" do
    get httparty_test_url(@httparty_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_httparty_test_url(@httparty_test)
    assert_response :success
  end

  test "should update httparty_test" do
    patch httparty_test_url(@httparty_test), params: { httparty_test: {  } }
    assert_redirected_to httparty_test_url(@httparty_test)
  end

  test "should destroy httparty_test" do
    assert_difference('HttpartyTest.count', -1) do
      delete httparty_test_url(@httparty_test)
    end

    assert_redirected_to httparty_tests_url
  end
end
