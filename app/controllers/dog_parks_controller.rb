class DogParksController < ApplicationController
  before_action :set_dog_park, only: [:show, :update, :destroy]

  # GET /dog_parks
  def index
    @dog_parks = DogPark.all

    render json: @dog_parks
  end

  # GET /dog_parks/1
  def show
    render json: @dog_park
  end

  # POST /dog_parks
  def create
    @dog_park = DogPark.new(dog_park_params)

    if @dog_park.save
      render json: @dog_park, status: :created, location: @dog_park
    else
      render json: @dog_park.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dog_parks/1
  def update
    if @dog_park.update(dog_park_params)
      render json: @dog_park
    else
      render json: @dog_park.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dog_parks/1
  def destroy
    @dog_park.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_park
      @dog_park = DogPark.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dog_park_params
      params.fetch(:dog_park, {})
    end
end
