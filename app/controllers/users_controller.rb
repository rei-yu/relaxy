class UsersController < ApplicationController
	
	def begin_registration
	end

  protected
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user == @user
    end
end
