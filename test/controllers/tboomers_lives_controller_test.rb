require 'test_helper'

class TboomersLivesControllerTest < ActionController::TestCase
  setup do
    @tboomers_life = tboomers_lives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tboomers_lives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tboomers_life" do
    assert_difference('TboomersLife.count') do
      post :create, tboomers_life: { active: @tboomers_life.active, title: @tboomers_life.title }
    end

    assert_redirected_to tboomers_life_path(assigns(:tboomers_life))
  end

  test "should show tboomers_life" do
    get :show, id: @tboomers_life
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tboomers_life
    assert_response :success
  end

  test "should update tboomers_life" do
    patch :update, id: @tboomers_life, tboomers_life: { active: @tboomers_life.active, title: @tboomers_life.title }
    assert_redirected_to tboomers_life_path(assigns(:tboomers_life))
  end

  test "should destroy tboomers_life" do
    assert_difference('TboomersLife.count', -1) do
      delete :destroy, id: @tboomers_life
    end

    assert_redirected_to tboomers_lives_path
  end
end
