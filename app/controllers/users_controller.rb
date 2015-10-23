class UsersController < ApplicationController
  has_many :comments

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
