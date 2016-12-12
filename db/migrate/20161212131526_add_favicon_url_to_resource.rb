class AddFaviconUrlToResource < ActiveRecord::Migration[5.0]
  def change
    add_column :resources, :favicon_url, :string
  end
end
