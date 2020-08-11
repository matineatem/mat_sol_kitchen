class OrdersController < ApplicationController
  
  def show
    @order = Order.find(params[:id])
    @user = @order.user
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)
    redirect_to oder_path(@order)
  end

  private

  def order_params
    params.require(:orders).permit(:name_tag, :user_id, :dessert_ids => [])
  end

end
