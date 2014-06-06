class ChangeOrderItemQuantityToFloat < ActiveRecord::Migration
  def change
    change_column :order_items, :quantity, :float
  end
end
