class OrdersController < ApplicationController
  before_action :set_order, only: [:show]
  
  def index
    #TODO remove
    order = Order.find(2)
    name = rand(1...100).to_s + "_order"
    order.update(name: name)
    render json: {status: 'updated'}
  end

  # GET /orders/1
  def show
    render json: @order, serializer: OrderSerializer
  end
private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end
end
