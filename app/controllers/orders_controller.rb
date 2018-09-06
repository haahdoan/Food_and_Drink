class OrdersController < ApplicationController
  before_action :check_login
  before_action :find_order, only: [:create, :destroy]
  before_action :remove_order, only: :show

  def new
    @order = Order.create! user: current_user
    @cart = current_user.carts
    @total_price = Cart.total_price @cart
  end

  def show
    @order = current_user.orders.order created_at: :desc
  end

  def create
    @order.update! purchased: true, delivery: params[:delivery],
      payment: params[:payment], address: params[:address]
    carts = current_user.carts
    carts.each do |c|
      if c.product.blank? || c.product.quantity == 0
        next
      elsif c.product.quantity < c.quantity
        cart_quantity = c.product.quantity
      else
        cart_quantity = c.quantity
      end
      total_price = cart_quantity * c.product.price
      ProductOrder.create!(quantity: cart_quantity,
        total_price: total_price,
        order: @order,
        product: c.product)
      product_quantity = c.product.quantity - cart_quantity
      c.product.update_column :quantity, product_quantity
      c.destroy
    end
    flash[:success] = t ".purchased"  
    redirect_to cart_path(current_user)
  end

  def destroy
    @order.destroy
    redirect_to cart_path(current_user)
  end

  def find_order
    @order = Order.find_by id: params[:id]
  end

  def remove_order
    Order.status.destroy_all
  end
end
