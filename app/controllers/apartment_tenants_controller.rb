class ApartmentTenantsController < ApplicationController
  before_action :set_apartment_tenant, only: %i[ show edit update destroy ]

  # GET /apartment_tenants or /apartment_tenants.json
  def index
    @apartment_tenants = ApartmentTenant.all
  end

  # GET /apartment_tenants/1 or /apartment_tenants/1.json
  def show
  end

  # GET /apartment_tenants/new
  def new
    @apartment_tenant = ApartmentTenant.new
    @tenants = Tenant.all
    @apartments = Apartment.all
  end

  # GET /apartment_tenants/1/edit
  def edit
  end

  # POST /apartment_tenants or /apartment_tenants.json
  def create
    @apartment_tenant = ApartmentTenant.new(apartment_tenant_params)

    respond_to do |format|
      if @apartment_tenant.save
        format.html { redirect_to apartment_tenant_url(@apartment_tenant), notice: "Apartment tenant was successfully created." }
        format.json { render :show, status: :created, location: @apartment_tenant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apartment_tenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartment_tenants/1 or /apartment_tenants/1.json
  def update
    respond_to do |format|
      if @apartment_tenant.update(apartment_tenant_params)
        format.html { redirect_to apartment_tenant_url(@apartment_tenant), notice: "Apartment tenant was successfully updated." }
        format.json { render :show, status: :ok, location: @apartment_tenant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apartment_tenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartment_tenants/1 or /apartment_tenants/1.json
  def destroy
    @apartment_tenant.destroy

    respond_to do |format|
      format.html { redirect_to apartment_tenants_url, notice: "Apartment tenant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment_tenant
      @apartment_tenant = ApartmentTenant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apartment_tenant_params
      params.require(:apartment_tenant).permit(:apartment_id, :tenant_id, :current)
    end
end
