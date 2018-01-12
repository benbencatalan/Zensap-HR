require 'test_helper'

class DepartmentPositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @department_position = department_positions(:one)
  end

  test "should get index" do
    get department_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_department_position_url
    assert_response :success
  end

  test "should create department_position" do
    assert_difference('Departmentposition.count') do
      post department_positions_url, params: { department_position: { decription: @department_position.decription, department_id: @department_position.department_id, position_id: @department_position.position_id } }
    end

    assert_redirected_to department_position_url(Departmentposition.last)
  end

  test "should show department_position" do
    get department_position_url(@department_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_department_position_url(@department_position)
    assert_response :success
  end

  test "should update department_position" do
    patch department_position_url(@department_position), params: { department_position: { decription: @department_position.decription, department_id: @department_position.department_id, position_id: @department_position.position_id } }
    assert_redirected_to department_position_url(@department_position)
  end

  test "should destroy department_position" do
    assert_difference('Departmentposition.count', -1) do
      delete department_position_url(@department_position)
    end

    assert_redirected_to department_positions_url
  end
end
