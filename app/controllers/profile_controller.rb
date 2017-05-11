class ProfileController < ApplicationController
  before_action :authorize_user
  def show
  	render json:{profile: current_user}
  end

  def update
  	current_user.update(user_params)
  	render json:{profile: current_user}
  end

  def user_params
    params.require(:user).permit(:name) #use [:user][:name] to update
  end
end
