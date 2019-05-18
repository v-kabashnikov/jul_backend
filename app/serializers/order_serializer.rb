class OrderSerializer < ActiveModel::Serializer
  attributes :id, :name, :company_address, :pickup_point, :items
  def items 
    self.object.items.map do |item|
      {
        name: item.name, 
        quantity: item.quantity,
      }
    end 
  end 
end
