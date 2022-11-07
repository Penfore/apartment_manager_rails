require "application_system_test_case"

class CondominiaTest < ApplicationSystemTestCase
  setup do
    @condominium = condominia(:one)
  end

  test "visiting the index" do
    visit condominia_url
    assert_selector "h1", text: "Condominia"
  end

  test "should create condominium" do
    visit condominia_url
    click_on "New condominium"

    fill_in "Name", with: @condominium.name
    click_on "Create Condominium"

    assert_text "Condominium was successfully created"
    click_on "Back"
  end

  test "should update Condominium" do
    visit condominium_url(@condominium)
    click_on "Edit this condominium", match: :first

    fill_in "Name", with: @condominium.name
    click_on "Update Condominium"

    assert_text "Condominium was successfully updated"
    click_on "Back"
  end

  test "should destroy Condominium" do
    visit condominium_url(@condominium)
    click_on "Destroy this condominium", match: :first

    assert_text "Condominium was successfully destroyed"
  end
end
