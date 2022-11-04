require "application_system_test_case"

class TenantsTest < ApplicationSystemTestCase
  setup do
    @tenant = tenants(:one)
  end

  test "visiting the index" do
    visit tenants_url
    assert_selector "h1", text: "Tenants"
  end

  test "should create tenant" do
    visit tenants_url
    click_on "New tenant"

    check "Authorize wpp" if @tenant.authorize_wpp
    fill_in "Birthday", with: @tenant.birthday
    fill_in "Cnpj", with: @tenant.cnpj
    fill_in "Company name", with: @tenant.company_name
    fill_in "Company phone", with: @tenant.company_phone
    fill_in "Contact", with: @tenant.contact
    fill_in "Contact name", with: @tenant.contact_name
    fill_in "Email", with: @tenant.email
    fill_in "End moving date", with: @tenant.end_moving_date
    fill_in "Moving date", with: @tenant.moving_date
    fill_in "Name", with: @tenant.name
    fill_in "Phone", with: @tenant.phone
    fill_in "Rg", with: @tenant.rg
    click_on "Create Tenant"

    assert_text "Tenant was successfully created"
    click_on "Back"
  end

  test "should update Tenant" do
    visit tenant_url(@tenant)
    click_on "Edit this tenant", match: :first

    check "Authorize wpp" if @tenant.authorize_wpp
    fill_in "Birthday", with: @tenant.birthday
    fill_in "Cnpj", with: @tenant.cnpj
    fill_in "Company name", with: @tenant.company_name
    fill_in "Company phone", with: @tenant.company_phone
    fill_in "Contact", with: @tenant.contact
    fill_in "Contact name", with: @tenant.contact_name
    fill_in "Email", with: @tenant.email
    fill_in "End moving date", with: @tenant.end_moving_date
    fill_in "Moving date", with: @tenant.moving_date
    fill_in "Name", with: @tenant.name
    fill_in "Phone", with: @tenant.phone
    fill_in "Rg", with: @tenant.rg
    click_on "Update Tenant"

    assert_text "Tenant was successfully updated"
    click_on "Back"
  end

  test "should destroy Tenant" do
    visit tenant_url(@tenant)
    click_on "Destroy this tenant", match: :first

    assert_text "Tenant was successfully destroyed"
  end
end
