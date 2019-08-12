class UsersController < ApplicationController
  def index
  end
  def new
    @user = User.new
  end
  def create
    @user = User.create(user_params)
    redirect_to gossips_path
  end

  def show
  @user = User.find(params[:id])
  end

private
def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :age,  :password, 
    :password_confirmation, :description)
end

end
