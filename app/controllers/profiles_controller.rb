class ProfilesController < ApplicationController

  def index
      @profiles = Profile.all
      # redirect_to '/profiles/#{current_user.id}'
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(params[:profile])

    if @profile.save
      redirect_to "/profiles/#{@profile.id}"
    else
      render :new
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(params[:profile])
      redirect_to "/profiles/#{@profile.id}"
    else
      render :edit
    end
  end

  def destroy
    Profile.find(params[:id]).update(active: false)
    redirect_to "/profiles"
  end

  private



end
