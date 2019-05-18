class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :company_address
      t.text :pickup_point

      t.timestamps
    end
  end
end
