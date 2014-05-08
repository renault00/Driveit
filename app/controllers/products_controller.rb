class ProductsController < ApplicationController
  def index
    @products = Product.paginate(page: params[:page], :per_page => 10 ,:conditions => params[:find], :order => 'name DESC')
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])

    if @product.save
      #show successful save
      flash[:success] = "Successfully added a car"
      redirect_to @product
    else
      render 'new'
    end
  end
end
