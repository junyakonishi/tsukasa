class ItemsController < ApplicationController
  def index
    @q = Item.ransack(params[:q])
    @items = Item.all
    @itmes = @q.result.includes(:area, :type)
    @area = ["高松市市街", "高松市郊外", "香川県西讃", "香川県東讃", "その他県外"]
    @type = ["事務所", "店舗", "戸建て", "土地", "倉庫", "一棟ビル", "マンション・アパート", "駐車場"]
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
    @q = Item.search(search_params)
    @items = @q.result(distinct: true)
  end

  def edit
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :catchup, :good, :baba, :room, :room_fee, :common_ff, :area, :deposit, :money, :guarantee, :brokage, :insurance, :renew, :movein, :others ,:address, :traffic, :building_name, :structure, :occupied_area, :number, :year, :specifications, :image).merge(user_id: current_user.id)
  end

  def search_params
    params.require(:q).permit!
  end

end
