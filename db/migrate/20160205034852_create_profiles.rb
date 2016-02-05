class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :siteabbr
      t.string :email
      t.string :site
      t.string :lpfi_id
      t.string :cohort
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :homephone
      t.string :workphone
      t.string :cellphone
      t.string :gender
      t.string :birthdate
      t.string :ethnicity
      t.string :otherethnic
      t.string :schoolcity
      t.string :schooltype
      t.string :counselor
      t.string :other_programs
      t.string :official_gpa
      t.string :graduationdate
      t.boolean :us_citizen
      t.string :ec1_name
      t.string :ec1_relationship
      t.string :ec1_homephone
      t.string :ec1_cellphone
      t.boolean :acceptedtocollege
      t.boolean :attendingcollege
      t.string :stemmajor
      t.string :graduatedcollege
      t.string :employment
      t.string :job_title
      t.string :grad_school
      t.string :grad_school_major
      t.string :grad_school_year_graduated
      t.string :linkedin
      t.string :networking_interest
      t.string :current_city
      t.string :current_state
      t.string :current_country
      t.string :career_interests

      t.timestamps null: false
    end
  end
end
