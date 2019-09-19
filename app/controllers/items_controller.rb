class ItemsController < ApplicationController

  require 'payjp'

  before_action :authenticate_user!, only: [:new, :confirmation, :confirmed]
  before_action :set_item, only: [:destroy, :show, :confirmed, :confirmation]
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
    @user_items = Item.where(user_id: @item.user_id)
    @images = ItemImage.where(item_id: @user_items)
    @product = Item.includes([:category, :user]).find(params[:id])
    @detail = @product.user.user_detail
    @imgs = ItemImage.where(item_id: @product.id)

 
    #payjpで必要なので残しておく
    # if current_user.card.blank?
    #   redirect_to controller: 'cards', action: 'new'
    # else
    #   Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    #   customer = Payjp::Customer.retrieve(card.customer_id)
    #   @default_card_information = customer.cards.retrieve(card.card_id)
    # end
  end

  def confirmation
    @detail = UserDetail.find_by(user_id: @item.user_id)
    @img = ItemImage.find_by(item_id: @item.id)
  end

  def confirmed
    @item.update(status: 'Sold')
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
      if @item.user_id == current_user.id
        @item.destroy
        redirect_to root_path
      end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :state, :shipping_charges, :shipping_method, :shipping_source_area, :days_ship, :price, item_images_attributes: [:image]).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.includes(:user).find(params[:id])
  end

end

