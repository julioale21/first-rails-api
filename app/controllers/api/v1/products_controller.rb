class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products, status: 200
  end

  def show
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: 200
    else
      render json: { error: "Error creating product", errors: @product.errors }      
    end
  end

  def product_params
    params.require(:product).permit(:name, :brand, :price, :description)
  end
end
