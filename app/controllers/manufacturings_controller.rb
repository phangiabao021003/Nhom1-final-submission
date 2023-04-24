class ManufacturingsController < ApplicationController
  before_action :set_manufacturing, only: %i[ show edit update destroy ]

  # GET /manufacturings or /manufacturings.json
  def index
    @manufacturings = Manufacturing.all
  end

  # GET /manufacturings/1 or /manufacturings/1.json
  def show
  end

  # GET /manufacturings/new
  def new
    @manufacturing = Manufacturing.new
  end

  # GET /manufacturings/1/edit
  def edit
  end

  # POST /manufacturings or /manufacturings.json
  def create
    @manufacturing = Manufacturing.new(manufacturing_params)

    respond_to do |format|
      if @manufacturing.save
        format.html { redirect_to manufacturing_url(@manufacturing), notice: "Manufacturing was successfully created." }
        format.json { render :show, status: :created, location: @manufacturing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @manufacturing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manufacturings/1 or /manufacturings/1.json
  def update
    respond_to do |format|
      if @manufacturing.update(manufacturing_params)
        format.html { redirect_to manufacturing_url(@manufacturing), notice: "Manufacturing was successfully updated." }
        format.json { render :show, status: :ok, location: @manufacturing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @manufacturing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manufacturings/1 or /manufacturings/1.json
  def destroy
    @manufacturing.destroy

    respond_to do |format|
      format.html { redirect_to manufacturings_url, notice: "Manufacturing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manufacturing
      @manufacturing = Manufacturing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manufacturing_params
      params.require(:manufacturing).permit(:manid, :manname)
    end
end
