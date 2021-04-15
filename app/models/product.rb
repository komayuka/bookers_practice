class Product < ApplicationRecord
  belongs_to :user
  attachment :product_img


  def new
    @product = Product.new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
