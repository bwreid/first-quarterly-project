class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
  end

  def new
    @classroom = Classroom.new
  end

  def create
    classroom = Classroom.create(params[:classroom])
    redirect_to(classroom)
  end

  def show
    @classroom = Classroom.find(params[:id])
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def update
    classroom = Classroom.find(params[:id])
    classroom.update_attributes(params[:classroom])
    redirect_to(classroom)
  end

  def destroy
    classroom = classroom.find(params[:id])
    classroom.delete
    redirect_to(classrooms_path)
  end
end