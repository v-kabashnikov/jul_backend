class ItemSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :name, :quantity
end
