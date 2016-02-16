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

  def user_id_check
    if user
      return user.id
    else
      return (-1)
    end
  end
end
