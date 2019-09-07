class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  layout "compact", only: [:new]

  def new
    @item = Item.new
    @item_image = @item.item_images.build
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end

  def confirmation
    @item = Item.includes(:user).find(params[:id])
    @detail = UserDetail.find_by(user_id: @item.user_id)
    @img = ItemImage.find_by(item_id: @item.id)
  end

  def update
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

  private

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :state, :shipping_charges, :shipping_method, :shipping_source_area, :days_ship, :price, item_images_attributes: [:image]).merge(user_id: current_user.id)
  end
end