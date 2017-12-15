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
    @student = Student.new(check_params(:first_name,:last_name))
  	@student.save
  	redirect_to post_path(@student)
  end

  def update
    @student = Student.find(params[:id])
	  @student.update(params(:first_name,:last_name))
	  redirect_to post_path(@student)
  end
end
