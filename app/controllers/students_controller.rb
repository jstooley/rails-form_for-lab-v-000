class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
  end

  def show
    @student = Student.find(id: params(;:id))
  end

  def create
  end

  def update
  end
end
