module Admin
  class ProductsController < BaseController
    before_action :check_login
    before_action :check_admin

    def index
      @products = Product.order(:name).all.page(params[:page])
        .per(Settings.product.pagination)
    end

    def show; end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new product_params
      if @product.save
        flash[:success] = t ".created"
        redirect_to_back
      else
        render :new
      end
    end

    def edit
      @product = Product.find_by id: params[:id]
    end

    def update
      @product = Product.find_by id: params[:id]
      if @product.update_attributes product_params
        flash[:success] = t ".update"
        redirect_to_back
      else
        # render :edit
        redirect_to edit_admin_product_path @product
      end
    end

    def destroy
      Product.find_by_id(params[:id]).destroy
      flash[:success] = t ".delete"
      redirect_to_back
    end

    def check_admin
      return if current_user.admin?
      flash[:danger] = t :check_admin
      redirect_to root_path
    end

    private

    def product_params
      params.require(:product).permit :name, :price, :quantity, :detail,
        :rate_average, :category_id, :picture
    end
  end
end
