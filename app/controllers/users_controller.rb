class UsersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.where(approved: false)
  end

  def approve
    User.where(id: params[:user_ids]).update_all(approved: true)
    redirect_to "/users"
  end
end
