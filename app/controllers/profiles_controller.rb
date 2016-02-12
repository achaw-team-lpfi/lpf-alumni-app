class ProfilesController < ApplicationController

  def index
    if current_user && current_user.admin
      @profiles = Profile.all
    else
      @profiles = Profile.where(active: true)
      # redirect_to '/profiles/#{current_user.id}'
    end
  end

  def new
    @profile = Profile.new
  end

  def create
    if current_user.admin
      @profile = Profile.new(profile_params)

      if @profile.save
        redirect_to "/profiles/#{@profile.id}"
      else
        render :new
      end

    else
      @profile = Profile.create(user_id: current_user.id)

      if @profile.update(alumni_params)
        redirect_to "/profiles/#{@profile.id}"
      else
        render :new
      end

    end

    # if @profile.save
    #   redirect_to "/profiles/#{@profile.id}"
    # else
    #   render :new
    # end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(alumni_params)
      redirect_to "/profiles/#{@profile.id}"
    else
      render :edit
    end
  end

  def destroy
    Profile.find(params[:id]).update(active: false)
    redirect_to "/profiles"
  end

  def search
    if current_user
      @profiles = Profile.all
    else
      redirect_to "/profiles"
    end  
  end

  def search_alumni
      if params[:search]
        search_term = params[:search].capitalize
        @searches = Profile.where("firstname LIKE ? OR lastname LIKE ?", "%#{search_term}%" , "%#{search_term}%")
        render :search
      end
  end

  private

  def profile_params
    params.require(:profile).permit(:firstname, :middlename, :lastname, :site, :siteabbr, :lpfi_id, :cohort, :address1, :address2, :city, :state, :zip, :country, :homephone, :workphone, :cellphone, :email, :user_id)
  end

  def alumni_params
    params.require(:profile).permit(:firstname, :middlename, :lastname, :site, :siteabbr, :lpfi_id, :cohort, :address1, :address2, :city, :state, :zip, :country, :homephone, :workphone, :cellphone, :email,)
  end


end
