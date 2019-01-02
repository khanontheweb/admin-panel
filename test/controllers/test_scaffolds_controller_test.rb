require 'test_helper'

class TestScaffoldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_scaffold = test_scaffolds(:one)
  end

  test "should get index" do
    get test_scaffolds_url
    assert_response :success
  end

  test "should get new" do
    get new_test_scaffold_url
    assert_response :success
  end

  test "should create test_scaffold" do
    assert_difference('TestScaffold.count') do
      post test_scaffolds_url, params: { test_scaffold: { email: @test_scaffold.email, password: 'secret', password_confirmation: 'secret' } }
    end

    assert_redirected_to test_scaffold_url(TestScaffold.last)
  end

  test "should show test_scaffold" do
    get test_scaffold_url(@test_scaffold)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_scaffold_url(@test_scaffold)
    assert_response :success
  end

  test "should update test_scaffold" do
    patch test_scaffold_url(@test_scaffold), params: { test_scaffold: { email: @test_scaffold.email, password: 'secret', password_confirmation: 'secret' } }
    assert_redirected_to test_scaffold_url(@test_scaffold)
  end

  test "should destroy test_scaffold" do
    assert_difference('TestScaffold.count', -1) do
      delete test_scaffold_url(@test_scaffold)
    end

    assert_redirected_to test_scaffolds_url
  end
end
