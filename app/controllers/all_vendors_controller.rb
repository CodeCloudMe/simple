class AllVendorsController < ApplicationController
  before_action :set_all_vendor, only: [:show, :edit, :update, :destroy]

  # GET /all_vendors
  # GET /all_vendors.json
  def index
    @all_vendors = AllVendor.all
  end

  # GET /all_vendors/1
  # GET /all_vendors/1.json
  def show
  end

  # GET /all_vendors/new
  def new
    @all_vendor = AllVendor.new
  end

  # GET /all_vendors/1/edit
  def edit
  end

  # POST /all_vendors
  # POST /all_vendors.json
  def create
    @all_vendor = AllVendor.new(all_vendor_params)

    respond_to do |format|
      if @all_vendor.save
        format.html { redirect_to @all_vendor, notice: 'All vendor was successfully created.' }
        format.json { render :show, status: :created, location: @all_vendor }
      else
        format.html { render :new }
        format.json { render json: @all_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /all_vendors/1
  # PATCH/PUT /all_vendors/1.json
  def update
    respond_to do |format|
      if @all_vendor.update(all_vendor_params)
        format.html { redirect_to @all_vendor, notice: 'All vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @all_vendor }
      else
        format.html { render :edit }
        format.json { render json: @all_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /all_vendors/1
  # DELETE /all_vendors/1.json
  def destroy
    @all_vendor.destroy
    respond_to do |format|
      format.html { redirect_to all_vendors_url, notice: 'All vendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_all_vendor
      @all_vendor = AllVendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def all_vendor_params
      params.require(:all_vendor).permit(:name, :description)
    end
end
