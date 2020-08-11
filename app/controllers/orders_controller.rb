class OrdersController < ApplicationController
  
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @user = @order.user
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)
   
    redirect_to order_path(@order)
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to order_path(@order)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:name_tag, :user_id, :dessert_ids => [])
  end

end
