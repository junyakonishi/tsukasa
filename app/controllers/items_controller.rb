class ItemsController < ApplicationController
  def index
    # @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
  end

  def search
  end

  def edit
    @item = Item.find(params[:id])
  end

end
