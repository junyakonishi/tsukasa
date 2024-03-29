class ItemsController < ApplicationController
  before_action :check_login, except:[:index, :show, :search]
  def index
    @q = Item.ransack(params[:q])
    @items = Item.all
    @itmes = @q.result.includes(:area, :type)
  end

  def new
    @item = Item.new
  end

  def create
 
    @item = Item.new(item_params)
    # binding.pry
    if @item.valid?
      @item.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def search
    @q = Item.search(search_params)
    @items = @q.result(distinct: true)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      @items=Item.roots
      render :edit
    end
    # @item = Item.find(params[:id])
  end

  def destroy
    item = Item.find(params[:id])
    if current_user.id == item.user.id
      item.destroy
      redirect_to root_path
    else
      redirect_to item_path(item.id)
    end
  end

  private

  def item_params

    params.require(:item).permit(:name, :catchup, :good, :type_id, :room, :room_fee, :common_ff, :area_id, :deposit, :money, :guarantee, :brokerage, :insurance, :renew, :movein, :others ,:address, :traffic, :building_name, :structure, :occupied_area, :number, :year, :specifications, :image).merge(user_id: current_user.id)

  end

  def search_params
    params.require(:q).permit!

  end

  def check_login
    unless user_signed_in?
      redirect_to root_path
    end
  end

end
