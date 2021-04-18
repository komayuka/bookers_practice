class User::ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @product = Product.all
  end

  def show
  end


  private

  def product_params
    params.require(:product).permit(:product_name, :product_description, :product_img, :sales_price, :sale_status)
  end

end
