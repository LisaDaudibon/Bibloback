class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  before_action :authenticate_user!, only: %i[ edit update ]
  def edit
    # Retrieve the current user and respond with the user object
    render json: current_user
  end

  def update
    if current_user.update(user_params)
      render json: {
        message: 'Profile updated successfully.',
        user: current_user
      }, status: :ok
    else
      render json: { message: 'Failed to update profile.' }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :pseudo, :password, :admin)
  end

  def update_success
    render json: {
      message: 'Profile updated successfully.',
      user: current_user
    }, status: :ok
  end

  def update_failed
    render json: { message: 'Failed to update profile.' }, status: :unprocessable_entity
  end


  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: {
      message: 'Signed up sucessfully.',
      user: current_user
    }, status: :ok
  end

  def register_failed
    render json: { message: 'Something went wrong.' }, status: :unprocessable_entity
  end
end