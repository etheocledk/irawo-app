class CreatePurchasedResources < ActiveRecord::Migration[8.0]
  def change
    create_table :purchased_resources do |t|
      t.references :resource, null: false, foreign_key: true
      t.decimal :price_paid
      t.datetime :purchased_at

      t.timestamps
    end
  end
end
