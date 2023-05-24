class AuthenticationController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:login]

  def login
    user = User.find_by_email(params[:email])

    if user&.valid_password?(params[:password])
      token = JWT.encode({ user_id: user.id }, Rails.application.config.jwt_secret_key, Rails.application.config.jwt_algorithm)
      render json: { token: token }, status: :ok
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end
end