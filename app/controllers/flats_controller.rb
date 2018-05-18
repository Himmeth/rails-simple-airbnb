class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flats_path
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end

# As a user, I can see all the available flats on our website
# As a user, I can post a flat to the website, specifying its name and address
# As a user, I can see detailed information of a given flat, including a nice little map if I get lost 😊
# As a user, I can edit the details of a flat if I made a mistake
# As a user, I can delete a flat from the website, in case I don't want to rent it anymore
