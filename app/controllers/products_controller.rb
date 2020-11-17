authorize @product

class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        record.user == user || user.admin
        @product = Product.new
    end

    def create
        @product = Product.find(params[:id])
        @product.save
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
