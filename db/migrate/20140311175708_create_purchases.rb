class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :basket, index: true
      t.references :user, index: true
      t.string :payment_type
      t.boolean :payment_complete 

      t.timestamps
    end
  end
end
