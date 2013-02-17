class WeaknessesController < ApplicationController
  def index
    @weaknesses = Weakness.all
  end

  def new
    @weakness = Weakness.new
  end

  def create
    # NEED TO RETHINK, IF YOU JUST CREATE A Weakness AND DON'T ASSIGN IT
    # IT WILL SHOW UP FOR EVERYONE
    # Weakness = Weakness.create(params[:Weakness])
    # $classroom_Weaknesss << Weakness
    # redirect_to(Weakness)
  end

  def show
    @weakness = Weakness.find(params[:id])
  end

  def edit
    @weakness = Weakness.find(params[:id])
  end

  def update
    weakness = Weakness.find(params[:id])
    weakness.update_attributes(params[:weakness])
    redirect_to(weakness)
  end

  def destroy
    weakness = Weakness.find(params[:id])
    weakness.delete
    redirect_to(weaknesses_path)
  end
end