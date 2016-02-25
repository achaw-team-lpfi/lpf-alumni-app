class ChangeSiteabbrToSchoolName < ActiveRecord::Migration
  def change
    rename_column :profiles, :siteabbr, :encrypted_schoolname
    add_column :profiles, :encrypted_currently_searching_for, :string
  end
end
