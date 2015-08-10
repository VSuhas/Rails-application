class UsersController < ApplicationController

	def index

		@users=User.all

	end

	def new
		@user =User.new

	end


	def create 
		
		@user =User.new(:firstname =>params[:user][:firstname],:lastname =>params[:user][:lastname],:designation =>params[:user][:designation],:origin =>params[:user][:origin])	
		if @user.valid? && @user.errors.blank?

			@user.save
			redirect_to user_path(@user)

    #redirect

  else
  	render "new"
  end

  def show
  	@user = User.find(params[:id])

  end
end
end
