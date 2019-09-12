class Api::V1::UsersController < ApplicationController

	def index
		users = User.all
		render json: users
	end

	def show
		user = User.find(params[:id])

		render json: user
	end

	def update
		user = User.find(params[:id])

		user.update(user_params)

		render json: user
	end

	def create
		user = User.create(user_params)
		# byebug
		if user.save

			token = encode_token(user.id)

			render json: {user: UserSerializer.new(user), token: token}
		else
			render json: {errors: user.errors.full_messages}
		end
	end

private
  def user_params
    params.require(:user).permit(:username, :bio, :password)
  end

end
