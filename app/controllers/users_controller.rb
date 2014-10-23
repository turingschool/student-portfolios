class UsersController < ApplicationController
	before_action :require_and_set_user 

	def edit
	end

	def update
		if @user.update(user_params)
			redirect_to root_path
		else
			render :edit
		end
	end

	private

	def require_and_set_user
		unless current_user
			redirect_to root_path
		end
		@user = current_user
	end

	def user_params
		params.require(:user).permit(:name, :email, :resume_url, :looking_for, :group_id)
	end
end
