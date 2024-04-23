require "application_system_test_case"

class ExerciseTypesTest < ApplicationSystemTestCase
  setup do
    @exercise_type = exercise_types(:one)
  end

  test "visiting the index" do
    visit exercise_types_url
    assert_selector "h1", text: "Exercise types"
  end

  test "should create exercise type" do
    visit exercise_types_url
    click_on "New exercise type"

    fill_in "Title", with: @exercise_type.title
    click_on "Create Exercise type"

    assert_text "Exercise type was successfully created"
    click_on "Back"
  end

  test "should update Exercise type" do
    visit exercise_type_url(@exercise_type)
    click_on "Edit this exercise type", match: :first

    fill_in "Title", with: @exercise_type.title
    click_on "Update Exercise type"

    assert_text "Exercise type was successfully updated"
    click_on "Back"
  end

  test "should destroy Exercise type" do
    visit exercise_type_url(@exercise_type)
    click_on "Destroy this exercise type", match: :first

    assert_text "Exercise type was successfully destroyed"
  end
end
