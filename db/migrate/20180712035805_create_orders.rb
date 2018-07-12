class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.boolean :purchased, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
