class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  layout "compact", only: [:new, :edit]

  def new
    @item = Item.new
    @item_image = @item.item_images.build
  end

  def edit
  end

  def update
  end


  def show
    #カテゴリ取得
    @cat = Item.includes(:category).find(params[:id])
    @item = Item.includes(:user).find(params[:id])
    @detail = UserDetail.find_by(user_id: @item.user_id)

    #imageを複数表示するには whereを使用する
    @img = ItemImage.find_by(item_id: @item.id)
  end

  def confirmation
    @item = Item.includes(:user).find(params[:id])
    @detail = UserDetail.find_by(user_id: @item.user_id)
    @img = ItemImage.find_by(item_id: @item.id)
  end

  def confirmed
    item = Item.find(params[:id])  
    item.update(status: 'Sold')
    item.save
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      params[:item_images]['image'].each do |i|
        @item_image = @item.item_images.create!(image: i, item_id: @item.id)
      end
      redirect_to root_path
    end
  end

  def destroy
    @item = Item.find(params[:id])
      if @item.user_id == current_user.id
        @item.destroy
        redirect_to root_path
      end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :state, :shipping_charges, :shipping_method, :shipping_source_area, :days_ship, :price, item_images_attributes: [:image]).merge(user_id: current_user.id)
  end

end

