require "application_system_test_case"

class EmergenciesTest < ApplicationSystemTestCase
  setup do
    @emergency = emergencies(:one)
  end

  test "visiting the index" do
    visit emergencies_url
    assert_selector "h1", text: "Emergencies"
  end

  test "should create emergency" do
    visit emergencies_url
    click_on "New emergency"

    fill_in "Contact", with: @emergency.contact
    fill_in "Name", with: @emergency.name
    fill_in "Owner", with: @emergency.owner_id
    fill_in "Parentage", with: @emergency.parentage
    fill_in "Tenant", with: @emergency.tenant_id
    click_on "Create Emergency"

    assert_text "Emergency was successfully created"
    click_on "Back"
  end

  test "should update Emergency" do
    visit emergency_url(@emergency)
    click_on "Edit this emergency", match: :first

    fill_in "Contact", with: @emergency.contact
    fill_in "Name", with: @emergency.name
    fill_in "Owner", with: @emergency.owner_id
    fill_in "Parentage", with: @emergency.parentage
    fill_in "Tenant", with: @emergency.tenant_id
    click_on "Update Emergency"

    assert_text "Emergency was successfully updated"
    click_on "Back"
  end

  test "should destroy Emergency" do
    visit emergency_url(@emergency)
    click_on "Destroy this emergency", match: :first

    assert_text "Emergency was successfully destroyed"
  end
end
