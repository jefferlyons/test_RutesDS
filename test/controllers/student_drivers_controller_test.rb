require 'test_helper'

class StudentDriversControllerTest < ActionController::TestCase
  setup do
    @student_driver = student_drivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_drivers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_driver" do
    assert_difference('StudentDriver.count') do
      post :create, student_driver: { driver_id: @student_driver.driver_id, student_id: @student_driver.student_id }
    end

    assert_redirected_to student_driver_path(assigns(:student_driver))
  end

  test "should show student_driver" do
    get :show, id: @student_driver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_driver
    assert_response :success
  end

  test "should update student_driver" do
    patch :update, id: @student_driver, student_driver: { driver_id: @student_driver.driver_id, student_id: @student_driver.student_id }
    assert_redirected_to student_driver_path(assigns(:student_driver))
  end

  test "should destroy student_driver" do
    assert_difference('StudentDriver.count', -1) do
      delete :destroy, id: @student_driver
    end

    assert_redirected_to student_drivers_path
  end
end
