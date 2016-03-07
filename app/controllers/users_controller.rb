class UsersController < ApplicationController
  def index
    @users = User.where(approved: false)
  end

  def approve
    User.where(id: params[:user_ids]).update_all(approved: true)
    redirect_to "/users"
  end
end
