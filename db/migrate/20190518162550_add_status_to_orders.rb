class AddStatusToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :status, :jsonb, null: false, default: '{}'
  end
end
