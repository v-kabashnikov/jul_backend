class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit]
  
  def index
  end

  # GET	/orders/:id/edit
  # for testing puproses
  # randomly changes order status
  def edit
    name = rand(1...100).to_s + "_order"
    status_randomizer = rand(1..4)
    case status_randomizer
    when 1
      status = { received: "completed", packing: "completed", delivering: "current", complete: ''}.to_json
    when 2
      status = { received: "completed", packing: "completed", delivering: "completed", complete: "current"}.to_json
    when 3
      status = { received: "completed", packing: "current", delivering: "", complete: ""}.to_json
    when 4
      status = { received: "current", packing: "", delivering: "", complete: ""}.to_json
    end
    @order.status = status
    @order.save
    render json: status
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
