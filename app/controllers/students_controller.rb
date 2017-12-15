class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(id: params[:id])
  end

  def create
    @student = Student.new(check_params(:title,:room_number))
  	@student.save
  	redirect_to post_path(@student)
  end

  def update
    @student = Student.find(params[:id])
	  @student.update(check_params(:room_number))
	  redirect_to post_path(@student)
  end
end
