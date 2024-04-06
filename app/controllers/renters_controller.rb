class RentersController < ApplicationController
  before_action :set_renter, only: %i[ show update destroy ]

  # GET /renters
  def index
    @renters = Renter.all

    render json: @renters
  end

  # GET /renters/1
  def show
    render json: @renter
  end

  # POST /renters
  def create
    @renter = Renter.new(renter_params)

    if @renter.save
      render json: @renter, status: :created, location: @renter
    else
      render json: @renter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /renters/1
  def update
    if @renter.update(renter_params)
      render json: @renter
    else
      render json: @renter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /renters/1
  def destroy
    @renter.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renter
      @renter = Renter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def renter_params
      params.require(:renter).permit(:first_name, :last_name, :email, :phone, :notes)
    end
end
