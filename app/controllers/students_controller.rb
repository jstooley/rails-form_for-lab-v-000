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
    @post = Post.new(post_params(:title,:description))
  	@post.save
  	redirect_to post_path(@post)
  end

  def update
    @student = Student.find(params[:id])
	  @student.update(post_params(:title))
	  redirect_to post_path(@post)
  end
end
