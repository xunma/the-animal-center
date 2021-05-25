class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    animal_params = params.require(:animal).permit(:name, :sex, :species)
    @animal = Animal.new(animal_params)
    @animal.save
    redirect_to animals_path
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    animal_params = params.require(:animal).permit(:name, :sex, :species)
    @animal.update(animal_params)
    redirect_to animal_path(@animal)
  end
end
