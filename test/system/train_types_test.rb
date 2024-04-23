require "application_system_test_case"

class TrainTypesTest < ApplicationSystemTestCase
  setup do
    @train_type = train_types(:one)
  end

  test "visiting the index" do
    visit train_types_url
    assert_selector "h1", text: "Train types"
  end

  test "should create train type" do
    visit train_types_url
    click_on "New train type"

    fill_in "Title", with: @train_type.title
    click_on "Create Train type"

    assert_text "Train type was successfully created"
    click_on "Back"
  end

  test "should update Train type" do
    visit train_type_url(@train_type)
    click_on "Edit this train type", match: :first

    fill_in "Title", with: @train_type.title
    click_on "Update Train type"

    assert_text "Train type was successfully updated"
    click_on "Back"
  end

  test "should destroy Train type" do
    visit train_type_url(@train_type)
    click_on "Destroy this train type", match: :first

    assert_text "Train type was successfully destroyed"
  end
end
