class ApplicationController < ActionController::API

  def authenticate(id)
    user = User.where(id: user_id, username: username).first
    !!user && user.authenticate(password)
  end

  def user_id
    params[:user_id]
  end

  def username
  end

  def password
  end
end
