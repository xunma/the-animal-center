class DonationsController < ApplicationController
  before_action :find_animal

  def index
    @donations = @animal.donations
  end

  def new
    # here we need both the animal, an empty donation object
    @donation = Donation.new
  end

  def create
    donation_params = params.require(:donation).permit(:description)
    donation = Donation.new(donation_params)
    donation.animal = @animal
    donation.save
    redirect_to animal_path(@animal)
  end

  private

  def find_animal
    @animal = Animal.find(params[:animal_id])
  end
end
