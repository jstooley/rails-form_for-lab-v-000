class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.find(id: params[:id])
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:first_name,:last_name))
    @school_class.save
    redirect_to post_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params(:first_name,:last_name))
    redirect_to post_path(@school_class)
  end

  private
  def school_class_params(*args)
  	params.require(:student || :school_class).permit(*args)
	end
end
