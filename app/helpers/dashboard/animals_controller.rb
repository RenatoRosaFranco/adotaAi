# frozen_string_literal: true

class Dashboard::AnimalsController < ApplicationController
  before_action :authenticate_user!

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
    @animal = current_user.animals.build(animal_params)
    if @animal.save
      redirect_to [:dashboard, @animal], notice: 'Animal cadastrado com sucesso.'
    else
      redirect_to :back, notice: 'Falha ao cadastrar animal.'
    end
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal.update(animal_params)
    redirect_to [:dashboard, @animal], notice: 'Animal atualizado com sucesso.'
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to dashboard_animals_path, notice: 'Animal removido com sucesso.'
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :birthdate, :animal_type, :animal_race, :size, :gender, :vacined, :castred, :vermifuged, :chiped, :description)
  end
end