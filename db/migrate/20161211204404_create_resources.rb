class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
