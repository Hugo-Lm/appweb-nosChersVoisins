class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      @products = policy_scope(Product).search_by_name(params[:query])
      authorize @products
    else
      @products = policy_scope(Product).order(created_at: :desc)
      authorize @products
    end
  end

  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(products_params)
    @product.user_id = current_user.id
    authorize @product
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  private

  def products_params
    params.require(:product).permit(:name, :description, :price, :address, :user_id)
  end
end
