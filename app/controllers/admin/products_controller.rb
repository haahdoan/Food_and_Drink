module Admin
  class ProductsController < BaseController
    def index
      @products = Product.all.page(params[:page])
        .per(Settings.product.pagination)
    end

    def show; end

    def new; end

    def create; end

    def edit
      @product = Product.find_by id: params[:id]
      @categories = Category.all
    end

    def update
      @product = Product.find_by id: params[:id]
      if @product.update_attributes product_params
        flash[:success] = t ".update"
        redirect_to admin_products_path
      else
        render :edit
      end
    end

    def destroy
      Product.find_by_id(params[:id]).destroy
      flash[:success] = t ".delete"
      redirect_to admin_products_path
    end

    private

    def product_params
      params.require(:product).permit :name, :price, :quantity, :detail,
        :rate_average
    end
  end
end
