class Order < ApplicationRecord
  has_many :items
  after_update :update_order

  private
  def update_order
    serialized_order = OrderSerializer.new(self).as_json
    OrdersChannel.broadcast_to(self, serialized_order)
  end
end
