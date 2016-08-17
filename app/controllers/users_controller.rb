class UsersController < ApplicationController
	before_action :set_params, only: [:edit, :show, :destroy]
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if user.save
			redirect_to @user
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def show
	end

	def index
	end

	def destroy
		@user.destroy
		redirect_to root_path
	end

	private

	def set_params
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confimation)
	end
end
