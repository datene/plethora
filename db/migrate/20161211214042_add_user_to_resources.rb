class AddUserToResources < ActiveRecord::Migration[5.0]
  def change
    add_reference :resources, :user, foreign_key: true
  end
end
