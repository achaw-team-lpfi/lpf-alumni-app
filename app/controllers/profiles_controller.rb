class ProfilesController < ApplicationController

  def index
    if current_user
    else
      redirect_to '/users/sign_in'
    end
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
