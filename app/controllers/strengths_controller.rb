class StrengthsController < ApplicationController
  def index
    @strengths = Strength.all
  end

  def new
    @strength = Strength.new
  end

  def create
    # NEED TO RETHINK, IF YOU JUST CREATE A STRENGTH AND DON'T ASSIGN IT
    # IT WILL SHOW UP FOR EVERYONE
    # strength = Strength.create(params[:strength])
    # $classroom_strengths << strength
    # redirect_to(strength)
  end

  def show
    @strength = Strength.find(params[:id])
  end

  def edit
    @strength = Strength.find(params[:id])
  end

  def update
    strength = Strength.find(params[:id])
    strength.update_attributes(params[:strength])
    redirect_to(strength)
  end

  def destroy
    strength = Strength.find(params[:id])
    strength.delete
    redirect_to(strengths_path)
  end
end