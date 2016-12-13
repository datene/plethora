class ChangeUserPhotourlToPhoto < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :photo_url, :photo
  end
end
