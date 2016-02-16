class Profile < ActiveRecord::Base
  belongs_to :user

  def name_format
    return "#{lastname}, #{firstname} #{middlename if middlename}"
  end

  def fullname
    return "#{firstname} #{middlename if middlename} #{lastname}"
  end

  def change_me
    return "FILLER TEXT, ADD FIELD"
  end

end
