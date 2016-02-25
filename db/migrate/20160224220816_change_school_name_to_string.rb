class ChangeSchoolNameToString < ActiveRecord::Migration
  def change
    change_column :profiles, :encrypted_schoolname, :string
  end
end
