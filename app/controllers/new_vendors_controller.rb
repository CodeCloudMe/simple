class NewVendorsController < ApplicationController
  before_action :set_new_vendor, only: [:show, :edit, :update, :destroy]

  # GET /new_vendors
  # GET /new_vendors.json
  def index
    @new_vendors = NewVendor.all
  end

  # GET /new_vendors/1
  # GET /new_vendors/1.json
  def show
  end

  # GET /new_vendors/new
  def new
    @new_vendor = NewVendor.new
  end

  # GET /new_vendors/1/edit
  def edit
  end

  # POST /new_vendors
  # POST /new_vendors.json
  def create
    @new_vendor = NewVendor.new(new_vendor_params)

    respond_to do |format|
      if @new_vendor.save
        format.html { redirect_to @new_vendor, notice: 'New vendor was successfully created.' }
        format.json { render :show, status: :created, location: @new_vendor }
      else
        format.html { render :new }
        format.json { render json: @new_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_vendors/1
  # PATCH/PUT /new_vendors/1.json
  def update
    respond_to do |format|
      if @new_vendor.update(new_vendor_params)
        format.html { redirect_to @new_vendor, notice: 'New vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_vendor }
      else
        format.html { render :edit }
        format.json { render json: @new_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_vendors/1
  # DELETE /new_vendors/1.json
  def destroy
    @new_vendor.destroy
    respond_to do |format|
      format.html { redirect_to new_vendors_url, notice: 'New vendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_vendor
      @new_vendor = NewVendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_vendor_params
      params.require(:new_vendor).permit(:name, :country)
    end
end
