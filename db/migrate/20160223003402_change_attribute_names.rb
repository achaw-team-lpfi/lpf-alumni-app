class ChangeAttributeNames < ActiveRecord::Migration
  def change
    rename_column :profiles, :country, :encrypted_county
    rename_column :profiles, :employment, :encrypted_employer
    rename_column :profiles, :grad_school_year_graduated, :encrypted_grad_school_year_of_graduation
    rename_column :profiles, :networking_interest, :encrypted_interested_in_networking_opportunities
    rename_column :profiles, :career_interests, :encrypted_career_areas_of_interest
    rename_column :profiles, :current_country, :encrypted_professional_development_areas_of_interest
  end
end
