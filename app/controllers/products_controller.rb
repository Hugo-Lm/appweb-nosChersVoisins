class ProductsController < ApplicationController


    skip_before_action :authenticate_user!, only: %i[index show] 

    def index
        @products = policy_scope(Product).order(created_at: :desc)
        console
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        record.user == user || user.admin
        @product = Product.new
    end

    def create
        authorize @product
        @product = Product.find(params[:id])
        if @product.save
            redirect_to products_path(id: @product.id)
        else
            render :new
        end
    end

    private

    def products_params
        params.require(:product).permit(:name, :description, :price, :adress, :owner_id)
    end

end
