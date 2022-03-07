class RemoveValueFromPurchase < ActiveRecord::Migration[5.2]
  def change
    remove_column :purchases, :value, :integer
  end
end
