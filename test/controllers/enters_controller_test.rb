require 'test_helper'

class EntersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enter = enters(:one)
  end

  test "should get index" do
    get enters_url
    assert_response :success
  end

  test "should get new" do
    get new_enter_url
    assert_response :success
  end

  test "should create enter" do
    assert_difference('Enter.count') do
      post enters_url, params: { enter: { calories: @enter.calories, carbohydrates: @enter.carbohydrates, fats: @enter.fats, meal_type: @enter.meal_type, proteins: @enter.proteins } }
    end

    assert_redirected_to enter_url(Enter.last)
  end

  test "should show enter" do
    get enter_url(@enter)
    assert_response :success
  end

  test "should get edit" do
    get edit_enter_url(@enter)
    assert_response :success
  end

  test "should update enter" do
    patch enter_url(@enter), params: { enter: { calories: @enter.calories, carbohydrates: @enter.carbohydrates, fats: @enter.fats, meal_type: @enter.meal_type, proteins: @enter.proteins } }
    assert_redirected_to enter_url(@enter)
  end

  test "should destroy enter" do
    assert_difference('Enter.count', -1) do
      delete enter_url(@enter)
    end

    assert_redirected_to enters_url
  end
end
