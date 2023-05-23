require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  include Warden::Test::Helpers #追加

  def setup
    @user = users(:admin)
    @task = tasks(:one)
  end

  test "should get index" do
    login_as(@user, scope: :user)
    get "/tasks"
    assert_response :success
  end

  test "should get show" do
    login_as(@user, scope: :user)
    get "/tasks/1"
    assert_response :success
  end

  test "should get store" do
    login_as(@user, scope: :user)
    get "/tasks"
    assert_response :success
  end

  test "should get update" do
    login_as(@user, scope: :user)
    get "/tasks/1"
    assert_response :success
  end

  test "should get destroy" do
    login_as(@user, scope: :user)
    get "/tasks/1"
    assert_response :success
  end
end
