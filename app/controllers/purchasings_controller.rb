class PurchasingsController < ApplicationController
  before_action :set_purchasing, only: %i[ show edit update destroy ]

  # GET /purchasings or /purchasings.json
  def index
    @purchasings = Purchasing.all
  end

  # GET /purchasings/1 or /purchasings/1.json
  def show
  end

  # GET /purchasings/new
  def new
    @purchasing = Purchasing.new
  end

  # GET /purchasings/1/edit
  def edit
  end

  # POST /purchasings or /purchasings.json
  def create
    @purchasing = Purchasing.new(purchasing_params)

    respond_to do |format|
      if @purchasing.save
        format.html { redirect_to purchasing_url(@purchasing), notice: "Purchasing was successfully created." }
        format.json { render :show, status: :created, location: @purchasing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @purchasing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchasings/1 or /purchasings/1.json
  def update
    respond_to do |format|
      if @purchasing.update(purchasing_params)
        format.html { redirect_to purchasing_url(@purchasing), notice: "Purchasing was successfully updated." }
        format.json { render :show, status: :ok, location: @purchasing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @purchasing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchasings/1 or /purchasings/1.json
  def destroy
    @purchasing.destroy

    respond_to do |format|
      format.html { redirect_to purchasings_url, notice: "Purchasing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchasing
      @purchasing = Purchasing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchasing_params
      params.require(:purchasing).permit(:store_id, :purchasingid, :product_id, :supplier_id, :unit, :number_of_unit, :note, :datepurchasing, :purchasingcost)
    end
end
