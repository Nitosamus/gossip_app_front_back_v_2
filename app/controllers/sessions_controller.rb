class SessionsController < ApplicationController
  def new
  	@users = User.new
  end

  def create
  	@users = User.find_by(email:params[:email])
  	if @users && @users.authenticate(params[:password])
  		sessions[:user_id] = @user.user_id
  		flash[:success] = "Bienvenue, connexion ave succes !!!"
  		redirect_to gossips_path
  	else
  		flah.now[:danger] = "Mot de passe ou email invalide, veillez réessayer SVP!"
  		render "new"
  	end
  	puts "#" * 50
  	puts sessions[:user_id]
  	puts "#" * 50
  end

  def destroy

  end
end
