class AddNameToPaymentMethod < ActiveRecord::Migration[5.2]
  def change
    add_column :payment_methods, :name, :string
  end
end
