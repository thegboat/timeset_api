class ApplicationController < ActionController::API

  def authenticate
    unless User.where(id: user_id, access_token: access_token).exists?
      render json: "The user could not be authenticated.", status: :forbidden
    end
  end

  protected

  def access_token
    @access_token ||= begin
      request.authorization =~ /Bearer (\w+)/
      $1
    end
  end

  def user_id
    params[:user_id]
  end
end
