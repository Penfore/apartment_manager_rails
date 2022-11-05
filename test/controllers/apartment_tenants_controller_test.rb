require "test_helper"

class ApartmentTenantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartment_tenant = apartment_tenants(:one)
  end

  test "should get index" do
    get apartment_tenants_url
    assert_response :success
  end

  test "should get new" do
    get new_apartment_tenant_url
    assert_response :success
  end

  test "should create apartment_tenant" do
    assert_difference("ApartmentTenant.count") do
      post apartment_tenants_url, params: { apartment_tenant: { apartment_id: @apartment_tenant.apartment_id, current: @apartment_tenant.current, tenant_id: @apartment_tenant.tenant_id } }
    end

    assert_redirected_to apartment_tenant_url(ApartmentTenant.last)
  end

  test "should show apartment_tenant" do
    get apartment_tenant_url(@apartment_tenant)
    assert_response :success
  end

  test "should get edit" do
    get edit_apartment_tenant_url(@apartment_tenant)
    assert_response :success
  end

  test "should update apartment_tenant" do
    patch apartment_tenant_url(@apartment_tenant), params: { apartment_tenant: { apartment_id: @apartment_tenant.apartment_id, current: @apartment_tenant.current, tenant_id: @apartment_tenant.tenant_id } }
    assert_redirected_to apartment_tenant_url(@apartment_tenant)
  end

  test "should destroy apartment_tenant" do
    assert_difference("ApartmentTenant.count", -1) do
      delete apartment_tenant_url(@apartment_tenant)
    end

    assert_redirected_to apartment_tenants_url
  end
end
