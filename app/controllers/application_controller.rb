class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def authenticate_approved_user!
    redirect_to "/" unless current_user && current_user.approved?
  end

  def authenticate_admin!
    redirect_to "/" unless current_user && current_user.admin?
  end

  @state_abbs = [
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
