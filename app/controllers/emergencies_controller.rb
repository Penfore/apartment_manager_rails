class EmergenciesController < ApplicationController
  before_action :set_emergency, only: %i[ show edit update destroy ]

  # GET /emergencies or /emergencies.json
  def index
    @emergencies = Emergency.all
  end

  # GET /emergencies/1 or /emergencies/1.json
  def show
  end

  # GET /emergencies/new
  def new
    @emergency = Emergency.new
    @tenants = Tenant.all
    @owners = Owner.all
  end

  # GET /emergencies/1/edit
  def edit
    @tenants = Tenant.all
    @owners = Owner.all
  end

  # POST /emergencies or /emergencies.json
  def create
    @emergency = Emergency.new(emergency_params)

    respond_to do |format|
      if @emergency.save
        format.html { redirect_to emergency_url(@emergency), notice: "Emergency was successfully created." }
        format.json { render :show, status: :created, location: @emergency }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emergency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emergencies/1 or /emergencies/1.json
  def update
    respond_to do |format|
      if @emergency.update(emergency_params)
        format.html { redirect_to emergency_url(@emergency), notice: "Emergency was successfully updated." }
        format.json { render :show, status: :ok, location: @emergency }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @emergency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emergencies/1 or /emergencies/1.json
  def destroy
    @emergency.destroy

    respond_to do |format|
      format.html { redirect_to emergencies_url, notice: "Emergency was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emergency
      @emergency = Emergency.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emergency_params
      params.require(:emergency).permit(:tenant_id, :owner_id, :name, :parentage, :contact)
    end
end
