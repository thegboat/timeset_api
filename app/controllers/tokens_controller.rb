class TokensController < ActionController::Base

  def create
    @user = User.where(username: params[:username]).first
    @user &&= @user.authenticate(params[:password])
    if @user
      @user.regenerate_access_token
      render :show, status: :created
    else
      render json: "The user could not be authenticated.", status: :forbidden
    end
  end
end