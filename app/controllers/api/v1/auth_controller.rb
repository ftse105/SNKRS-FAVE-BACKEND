class Api::V1::AuthController < ApplicationController
  def login
    # check if my params contain the entered username and password
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])

      token = encode_token(user.id)

      render json: {user: UserSerializer.new(user), token: token}

      # render json: user
    else
      render json: {errors: "Incorrect Password, Please try again"}
    end
  end

  def auto_login
    if session_user
      render json: {user: UserSerializer.new(session_user), shoes: Shoe.all}
    else
      render json: {errors: "Login"}
    end
  end
end
