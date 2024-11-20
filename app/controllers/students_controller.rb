class StudentsController < ApplicationController
  def index
    @Students = Student.all
  end
  
  def show
    @Student = Student.find(params[:id])
    @Fitting = Fitting.find(@Student.fitting.id)
  end
end
