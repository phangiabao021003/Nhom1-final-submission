class BuyingmethodsController < ApplicationController
  before_action :set_buyingmethod, only: %i[ show edit update destroy ]

  # GET /buyingmethods or /buyingmethods.json
  def index
    @buyingmethods = Buyingmethod.all
  end

  # GET /buyingmethods/1 or /buyingmethods/1.json
  def show
  end

  # GET /buyingmethods/new
  def new
    @buyingmethod = Buyingmethod.new
  end

  # GET /buyingmethods/1/edit
  def edit
  end

  # POST /buyingmethods or /buyingmethods.json
  def create
    @buyingmethod = Buyingmethod.new(buyingmethod_params)

    respond_to do |format|
      if @buyingmethod.save
        format.html { redirect_to buyingmethod_url(@buyingmethod), notice: "Buyingmethod was successfully created." }
        format.json { render :show, status: :created, location: @buyingmethod }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @buyingmethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buyingmethods/1 or /buyingmethods/1.json
  def update
    respond_to do |format|
      if @buyingmethod.update(buyingmethod_params)
        format.html { redirect_to buyingmethod_url(@buyingmethod), notice: "Buyingmethod was successfully updated." }
        format.json { render :show, status: :ok, location: @buyingmethod }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @buyingmethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buyingmethods/1 or /buyingmethods/1.json
  def destroy
    @buyingmethod.destroy

    respond_to do |format|
      format.html { redirect_to buyingmethods_url, notice: "Buyingmethod was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyingmethod
      @buyingmethod = Buyingmethod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def buyingmethod_params
      params.require(:buyingmethod).permit(:buyingmed)
    end
end
