class AddDefaultToResourceDescription < ActiveRecord::Migration[5.0]
  def change
    change_column :resources, :description, :string, default: ""
  end
end
