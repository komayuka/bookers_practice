class Admin::ProductsController < ApplicationController
   before_action :if_not_admins

   def new
    @product = Product.new
   end

  def create
    @product = Product.new(product_params)
    @product.admin_id = current_admin.id
    @product.save
    redirect_to product_path
  end

  def index
    @product = Product.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def if_not_admins
    redirect_to  root_path unless current_user.admins?
  end


  def product_params
    params.require(:product).permit(:product_name, :product_description, :product_img, :sales_price, :sale_status)
  end

end

