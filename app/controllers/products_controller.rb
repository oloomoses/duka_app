class ProductsController < ApplicationController
    def index
        @prods = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)

        if @product.save
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
    end

    private
        def product_params
            params.require(:product).permit(:name, :description, :price, :qty)
        end
end
