class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @student = SchoolClass.new
  end

  def show
    @student = SchoolClass.find(id: params[:id])
  end

  def create
    @student = SchoolClass.new(check_params(:first_name,:last_name))
    @student.save
    redirect_to post_path(@student)
  end

  def update
    @student = SchoolClass.find(params[:id])
    @student.update(check_params(:first_name,:last_name))
    redirect_to post_path(@student)
end
