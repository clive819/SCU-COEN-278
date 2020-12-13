class ShopperController < ApplicationController
  def index
      @products = Product.order(:name)
  end

  def search
      @products = Product.where("name like ?", "%#{params[:name]}%")
  end

  def show
      @product = Product.find_by(name: params[:name])
  end
end
