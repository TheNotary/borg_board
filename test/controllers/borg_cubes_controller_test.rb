require 'test_helper'

class BorgCubesControllerTest < ActionController::TestCase
  setup do
    @borg_cube = borg_cubes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:borg_cubes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create borg_cube" do
    assert_difference('BorgCube.count') do
      post :create, borg_cube: { hp: @borg_cube.hp, name: @borg_cube.name, sleeping_borg: @borg_cube.sleeping_borg, waking_borg: @borg_cube.waking_borg, x: @borg_cube.x, y: @borg_cube.y }
    end

    assert_redirected_to borg_cube_path(assigns(:borg_cube))
  end

  test "should show borg_cube" do
    get :show, id: @borg_cube
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @borg_cube
    assert_response :success
  end

  test "should update borg_cube" do
    patch :update, id: @borg_cube, borg_cube: { hp: @borg_cube.hp, name: @borg_cube.name, sleeping_borg: @borg_cube.sleeping_borg, waking_borg: @borg_cube.waking_borg, x: @borg_cube.x, y: @borg_cube.y }
    assert_redirected_to borg_cube_path(assigns(:borg_cube))
  end

  test "should destroy borg_cube" do
    assert_difference('BorgCube.count', -1) do
      delete :destroy, id: @borg_cube
    end

    assert_redirected_to borg_cubes_path
  end
end
