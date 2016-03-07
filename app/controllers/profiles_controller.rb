class ProfilesController < ApplicationController

  def index
    if current_user && current_user.admin
      profile_headers = Profile.column_names
      @profile_header_list = []
      
      profile_headers.each do |profile_header|
        @profile_header_list << profile_header
      end
      
      @profiles = Profile.all
    else
      profile_headers = Profile.column_names
      @profile_header_list = []
      
      profile_headers.each do |profile_header|
        @profile_header_list << profile_header
      end      
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
  
       puts "into search alumni" 
      if params[:search]
        @search_term = params[:search].capitalize 
        puts "should render search page "
        render :search
      end
        # search_header = params[:profile_header]
        #searches = Profile.where("#{search_header} LIKE ? ", "%#{search_term}" )
        # @searches = Profile.where("firstname LIKE ? OR 
        #   lastname LIKE ? OR 
        #   email LIKE ? OR
        #   site LIKE ? OR
        #   city LIKE ? OR
        #   state LIKE ? OR
        #   stemmajor LIKE ? OR
        #   graduatedcollege LIKE ? OR
        #   employment LIKE ? OR
        #   job_title LIKE ? OR
        #   grad_school LIKE ? OR
        #   grad_school_major LIKE ? OR
        #   linkedin LIKE ? OR
        #   current_city LIKE ? OR
        #   current_state LIKE ? OR
        #   career_interests LIKE ?" , 
        #   "%#{search_term}%" ,
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%",
        #   "%#{search_term}%")

          # "%#{search_term}%",
          # attendingcollege LIKE ? OR
  end

  def search_staff
      if params[:search] 
        search_term = params[:search].capitalize
        @searches = Profile.where("firstname LIKE ? OR lastname LIKE ?", "%#{search_term}%" , "%#{search_term}%")
        render :search
      end
  end

  def showprofile
    
  end

  private

  def profile_params
    params.require(:profile).permit(:address1, :address2, :email, :site, :lpfi_id, :cohort, :firstname, :middlename, :lastname, :city, :state, :zip, :homephone, :workphone, :cellphone, :gender, :birthdate, :ethnicity, :otherethnic, :schoolcity, :schooltype, :counselor, :other_programs, :official_gpa, :graduationdate, :ec1_name, :ec1_relationship, :ec1_homephone, :ec1_cellphone, :stemmajor, :graduatedcollege, :job_title, :grad_school, :grad_school_major, :linkedin, :current_city, :current_state, :schoolname, :county, :employer, :grad_school_year_of_graduation, :interested_in_networking_opportunities, :career_areas_of_interest, :professional_development_areas_of_interest, :user_id)
  end

  def alumni_params
    params.require(:profile).permit(:address1, :address2, :email, :site, :lpfi_id, :cohort, :firstname, :middlename, :lastname, :city, :state, :zip, :homephone, :workphone, :cellphone, :gender, :birthdate, :ethnicity, :otherethnic, :schoolcity, :schooltype, :counselor, :other_programs, :official_gpa, :graduationdate, :ec1_name, :ec1_relationship, :ec1_homephone, :ec1_cellphone, :stemmajor, :graduatedcollege, :job_title, :grad_school, :grad_school_major, :linkedin, :current_city, :current_state, :schoolname, :county, :employer, :grad_school_year_of_graduation, :interested_in_networking_opportunities, :career_areas_of_interest, :professional_development_areas_of_interest)
  end


end
