class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    # binding.pry
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

  private

  def item_params
    params.require(:item).permit(:name, :catchup, :good, :baba, :room, :room_fee, :common_ff, :area, :deposit, :money, :guarantee, :brokage, :insurance, :renew, :movein, :others ,:address, :traffic, :building_name, :structure, :occupied_area, :number, :year, :specifications, :image).merge(user_id: current_user.id)
  end

end
