class Profile < ActiveRecord::Base
  belongs_to :user

  def fullname
    return "#{firstname} #{middlename if middlename} #{lastname}"
  end

  # def search(name)
  #   find(:all,:conditions => ['firstname LIKE ?', "%#{name}%"])
  #   if name
  #   else
  #     find(:all)
  #   end
  #end
end
