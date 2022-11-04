require "test_helper"

class TenantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tenant = tenants(:one)
  end

  test "should get index" do
    get tenants_url
    assert_response :success
  end

  test "should get new" do
    get new_tenant_url
    assert_response :success
  end

  test "should create tenant" do
    assert_difference("Tenant.count") do
      post tenants_url, params: { tenant: { authorize_wpp: @tenant.authorize_wpp, birthday: @tenant.birthday, cnpj: @tenant.cnpj, company_name: @tenant.company_name, company_phone: @tenant.company_phone, contact: @tenant.contact, contact_name: @tenant.contact_name, email: @tenant.email, end_moving_date: @tenant.end_moving_date, moving_date: @tenant.moving_date, name: @tenant.name, phone: @tenant.phone, rg: @tenant.rg } }
    end

    assert_redirected_to tenant_url(Tenant.last)
  end

  test "should show tenant" do
    get tenant_url(@tenant)
    assert_response :success
  end

  test "should get edit" do
    get edit_tenant_url(@tenant)
    assert_response :success
  end

  test "should update tenant" do
    patch tenant_url(@tenant), params: { tenant: { authorize_wpp: @tenant.authorize_wpp, birthday: @tenant.birthday, cnpj: @tenant.cnpj, company_name: @tenant.company_name, company_phone: @tenant.company_phone, contact: @tenant.contact, contact_name: @tenant.contact_name, email: @tenant.email, end_moving_date: @tenant.end_moving_date, moving_date: @tenant.moving_date, name: @tenant.name, phone: @tenant.phone, rg: @tenant.rg } }
    assert_redirected_to tenant_url(@tenant)
  end

  test "should destroy tenant" do
    assert_difference("Tenant.count", -1) do
      delete tenant_url(@tenant)
    end

    assert_redirected_to tenants_url
  end
end
