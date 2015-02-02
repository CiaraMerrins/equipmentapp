require 'test_helper'

class EquipmenttypesControllerTest < ActionController::TestCase
  setup do
    @equipmenttype = equipmenttypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipmenttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipmenttype" do
    assert_difference('Equipmenttype.count') do
      post :create, equipmenttype: @equipmenttype.attributes
    end

    assert_redirected_to equipmenttype_path(assigns(:equipmenttype))
  end

  test "should show equipmenttype" do
    get :show, id: @equipmenttype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipmenttype
    assert_response :success
  end

  test "should update equipmenttype" do
    put :update, id: @equipmenttype, equipmenttype: @equipmenttype.attributes
    assert_redirected_to equipmenttype_path(assigns(:equipmenttype))
  end

  test "should destroy equipmenttype" do
    assert_difference('Equipmenttype.count', -1) do
      delete :destroy, id: @equipmenttype
    end

    assert_redirected_to equipmenttypes_path
  end
end
