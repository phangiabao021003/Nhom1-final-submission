class StoreChainsController < ApplicationController
  before_action :set_store_chain, only: %i[ show edit update destroy ]

  # GET /store_chains or /store_chains.json
  def index
    @store_chains = StoreChain.all
  end

  # GET /store_chains/1 or /store_chains/1.json
  def show
  end

  # GET /store_chains/new
  def new
    @store_chain = StoreChain.new
  end

  # GET /store_chains/1/edit
  def edit
  end

  # POST /store_chains or /store_chains.json
  def create
    @store_chain = StoreChain.new(store_chain_params)

    respond_to do |format|
      if @store_chain.save
        format.html { redirect_to store_chain_url(@store_chain), notice: "Store chain was successfully created." }
        format.json { render :show, status: :created, location: @store_chain }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @store_chain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_chains/1 or /store_chains/1.json
  def update
    respond_to do |format|
      if @store_chain.update(store_chain_params)
        format.html { redirect_to store_chain_url(@store_chain), notice: "Store chain was successfully updated." }
        format.json { render :show, status: :ok, location: @store_chain }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @store_chain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_chains/1 or /store_chains/1.json
  def destroy
    @store_chain.destroy

    respond_to do |format|
      format.html { redirect_to store_chains_url, notice: "Store chain was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_chain
      @store_chain = StoreChain.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_chain_params
      params.require(:store_chain).permit(:chain_number, :website, :header_id)
    end
end
