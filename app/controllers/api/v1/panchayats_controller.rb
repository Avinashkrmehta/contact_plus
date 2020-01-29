class PanchayatsController < ApplicationController
  before_action :set_panchayat, only: [:show, :update, :destroy]
  before_action :authenticate_with_token, only: [:create, :update]

  # GET /panchayats
  def index
    @panchayats = Panchayat.all

    render json: @panchayats
  end

  # GET /panchayats/1
  def show
    render json: @panchayat
  end

  # POST /panchayats
  def create
    @panchayat = Panchayat.new(panchayat_params)

    if @panchayat.save
      render json: @panchayat, status: :created, location: @panchayat
    else
      render json: @panchayat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /panchayats/1
  def update
    if @panchayat.update(panchayat_params)
      render json: @panchayat
    else
      render json: @panchayat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /panchayats/1
  def destroy
    @panchayat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panchayat
      @panchayat = Panchayat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def panchayat_params
      params.require(:panchayat).permit(:code, :name)
    end
end
