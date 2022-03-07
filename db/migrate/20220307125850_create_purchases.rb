class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.references :store, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity
      t.float :value
      t.references :payment_method, foreign_key: true
      t.boolean :voucher
      t.string :description

      t.timestamps
    end
  end
end
