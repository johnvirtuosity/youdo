class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  	@users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    
  end

  private
  def user_params
    params.require(:user).permit(:name,:postadd_1,:postadd_2,:postadd_3, :is_admin)
  end
end
