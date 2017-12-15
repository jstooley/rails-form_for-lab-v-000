class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private

	def check_params(*args)
  	params.require(:student || :school_class).permit(*args)
	end
end
