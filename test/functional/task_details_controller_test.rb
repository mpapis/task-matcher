require 'test_helper'

class TaskDetailsControllerTest < ActionController::TestCase
  setup do
    @task_detail = task_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_detail" do
    assert_difference('TaskDetail.count') do
      post :create, task_detail: { name: @task_detail.name, people_amount: @task_detail.people_amount, time_required: @task_detail.time_required }
    end

    assert_redirected_to task_detail_path(assigns(:task_detail))
  end

  test "should show task_detail" do
    get :show, id: @task_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task_detail
    assert_response :success
  end

  test "should update task_detail" do
    put :update, id: @task_detail, task_detail: { name: @task_detail.name, people_amount: @task_detail.people_amount, time_required: @task_detail.time_required }
    assert_redirected_to task_detail_path(assigns(:task_detail))
  end

  test "should destroy task_detail" do
    assert_difference('TaskDetail.count', -1) do
      delete :destroy, id: @task_detail
    end

    assert_redirected_to task_details_path
  end
end
