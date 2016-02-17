class ChangeAddress1ToEncryptedAddress1 < ActiveRecord::Migration
  def change
    rename_column :profiles, :address1, :encrypted_address1
  end
end
