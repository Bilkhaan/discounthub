class RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.new(user_params)
    if @user.save
      render json: {state: {code: 0}, data: @user }
    else
      render json: {state: {code: 1, messages: @user.errors.full_messages} }
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :phone, :salt)
  end
end
