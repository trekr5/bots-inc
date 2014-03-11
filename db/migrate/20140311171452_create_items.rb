class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :sku
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end
