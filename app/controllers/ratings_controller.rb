class RatingsController < ApplicationController
  before_action :check_login
  before_action :load_product

  def create
    return flash[:danger] = t(:had_rate) if @product.rated_by?(current_user)
    return flash[:danger] = t(:no_star) if params[:rating][:value].nil?
    @product.rate(params[:rating][:value], current_user)

    if @product.save
      flash[:success] = t :rate_success
    else
      flash[:danger] = t :rate_fail
    end

    redirect_to @product
  end

  private

  def load_product
    @product ||= Product.find_by(id: params[:rating][:product_id])
    redirect_to root_path, alert: t(:no_product) unless @product
  end
end
