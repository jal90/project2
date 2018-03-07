class GuitarsController < ApplicationController
  before_action :set_guitar, only: [:show, :update, :destroy]

  # GET /guitars
  def index
    @guitars = Guitar.all

    render json: @guitars
  end

  # GET /guitars/1
  def show
    render json: @guitar
  end

  # POST /guitars
  def create
    @guitar = Guitar.new(guitar_params)

    if @guitar.save
      render json: @guitar, status: :created, location: @guitar
    else
      render json: @guitar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /guitars/1
  def update
    if @guitar.update(guitar_params)
      render json: @guitar
    else
      render json: @guitar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /guitars/1
  def destroy
    @guitar.destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_guitar
      @guitar = Guitar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def guitar_params
      params.require(:guitar).permit(:make, :model, :string_brand, :string_guage, :last_string_change, :last_setup, :setup_notes)
    end
end
