class CreateResources < ActiveRecord::Migration[8.0]
  def change
    create_table :resources do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image
      t.string :resource_type
      t.string :link_url
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
