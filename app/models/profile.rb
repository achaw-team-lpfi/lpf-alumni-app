class Profile < ActiveRecord::Base
  belongs_to :user
  attr_encrypted :address1, :address2, :email, :site, :lpfi_id, :cohort, :firstname, :middlename, :lastname, :city, :state, :zip, :homephone, :workphone, :cellphone, :gender, :birthdate, :ethnicity, :otherethnic, :schoolcity, :schooltype, :counselor, :other_programs, :official_gpa, :graduationdate, :ec1_name, :ec1_relationship, :ec1_homephone, :ec1_cellphone, :stemmajor, :graduatedcollege, :job_title, :grad_school, :grad_school_major, :linkedin, :current_city, :current_state, :schoolname, :county, :employer, :grad_school_year_of_graduation, :interested_in_networking_opportunities, :career_areas_of_interest, :professional_development_areas_of_interest, :key => 'a secret key'

  def name_format
    return "#{lastname}, #{firstname} #{middlename if middlename}"
  end

  def fullname
    return "#{firstname} #{middlename if middlename} #{lastname}"
  end

  def change_me
    return "FILLER TEXT, ADD FIELD"
  end

  def state_abbs
    return [
    ['AK','AK'],
    ['AL','AL'],
    ['AR','AR'],
    ['AZ','AZ'],
    ['CA','CA'],
    ['CO','CO'],
    ['CT','CT'],
    ['DE','DE'],
    ['FL','FL'],
    ['GA','GA'],
    ['HI','HI'],
    ['IA','IA'],
    ['ID','ID'],
    ['IL','IL'],
    ['IN','IN'],
    ['KS','KS'],
    ['KY','KY'],
    ['LA','LA'],
    ['MA','MA'],
    ['MD','MD'],
    ['ME','ME'],
    ['MI','MI'],
    ['MN','MN'],
    ['MO','MO'],
    ['MS','MS'],
    ['MT','MT'],
    ['NC','NC'],
    ['ND','ND'],
    ['NE','NE'],
    ['NH','NH'],
    ['NJ','NJ'],
    ['NM','NM'],
    ['NV','NV'],
    ['NY','NY'],
    ['OH','OH'],
    ['OK','OK'],
    ['OR','OR'],
    ['PA','PA'],
    ['RI','RI'],
    ['SC','SC'],
    ['SD','SD'],
    ['TN','TN'],
    ['TX','TX'],
    ['UT','UT'],
    ['VA','VA'],
    ['VT','VT'],
    ['WA','WA'],
    ['WI','WI'],
    ['WV','WV'],
    ['WY','WY']]
  end

  def gender_list
    return [
    ['Male','Male'],['Female','Female']]
  end

  def boolean_select
    return [['yes', true],['no', false]]
  end

  def boolean_select_rev
    return [['no', false],['yes', true]]
  end


  def user_id_check
    if user
      return user.id
    else
      return (-1)
    end
  end

end
