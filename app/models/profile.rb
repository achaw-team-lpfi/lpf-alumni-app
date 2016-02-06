class Profile < ActiveRecord::Base
  belongs_to :user

  def fullname
    return "#{firstname} #{middlename if middlename}#{lastname}"
  end
end
