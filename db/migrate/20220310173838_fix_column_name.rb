class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :payment_methods, :type, :payment_type

  end
end
