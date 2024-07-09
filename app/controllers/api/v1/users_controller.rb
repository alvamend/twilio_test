class Api::V1::UsersController < ApplicationController
  def create
    user = User.create!(user_params)
    render json: {
      user: {
        name: user.name,
        phone_number: user.phone_number,
      },
    }
  rescue ActiveRecord::RecordInvalid => e
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end

  private

  def user_params
    params.require(:user).permit(:name, :phone_number)
  end
end
