class UsersController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[show]
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  private

  def users_params
    params.require(:user).permit(:first_name, :last_name, :address, :email, :password, :photo)
  end
end
