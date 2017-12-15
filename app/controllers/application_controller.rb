class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private

	def check_params(*args)
  	 if params.require(:student).permit(*args)
     else
    params.require(:school_class).permit(*args)
  end
	end
end
