require "application_system_test_case"

class ApartmentTenantsTest < ApplicationSystemTestCase
  setup do
    @apartment_tenant = apartment_tenants(:one)
  end

  test "visiting the index" do
    visit apartment_tenants_url
    assert_selector "h1", text: "Apartment tenants"
  end

  test "should create apartment tenant" do
    visit apartment_tenants_url
    click_on "New apartment tenant"

    fill_in "Apartment", with: @apartment_tenant.apartment_id
    check "Current" if @apartment_tenant.current
    fill_in "Tenant", with: @apartment_tenant.tenant_id
    click_on "Create Apartment tenant"

    assert_text "Apartment tenant was successfully created"
    click_on "Back"
  end

  test "should update Apartment tenant" do
    visit apartment_tenant_url(@apartment_tenant)
    click_on "Edit this apartment tenant", match: :first

    fill_in "Apartment", with: @apartment_tenant.apartment_id
    check "Current" if @apartment_tenant.current
    fill_in "Tenant", with: @apartment_tenant.tenant_id
    click_on "Update Apartment tenant"

    assert_text "Apartment tenant was successfully updated"
    click_on "Back"
  end

  test "should destroy Apartment tenant" do
    visit apartment_tenant_url(@apartment_tenant)
    click_on "Destroy this apartment tenant", match: :first

    assert_text "Apartment tenant was successfully destroyed"
  end
end
