class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.references :purchase, index: true
      t.references :robot, index: true
      t.datetime :delivered_at

      t.timestamps
    end
  end
end
