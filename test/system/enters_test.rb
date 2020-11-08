require "application_system_test_case"

class EntersTest < ApplicationSystemTestCase
  setup do
    @enter = enters(:one)
  end

  test "visiting the index" do
    visit enters_url
    assert_selector "h1", text: "Enters"
  end

  test "creating a Enter" do
    visit enters_url
    click_on "New Enter"

    fill_in "Calories", with: @enter.calories
    fill_in "Carbohydrates", with: @enter.carbohydrates
    fill_in "Fats", with: @enter.fats
    fill_in "Meal type", with: @enter.meal_type
    fill_in "Proteins", with: @enter.proteins
    click_on "Create Enter"

    assert_text "Enter was successfully created"
    click_on "Back"
  end

  test "updating a Enter" do
    visit enters_url
    click_on "Edit", match: :first

    fill_in "Calories", with: @enter.calories
    fill_in "Carbohydrates", with: @enter.carbohydrates
    fill_in "Fats", with: @enter.fats
    fill_in "Meal type", with: @enter.meal_type
    fill_in "Proteins", with: @enter.proteins
    click_on "Update Enter"

    assert_text "Enter was successfully updated"
    click_on "Back"
  end

  test "destroying a Enter" do
    visit enters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enter was successfully destroyed"
  end
end
