class ItemsController < ApplicationController

  require 'payjp'

  before_action :authenticate_user!, only: [:new, :confirmation, :confirmed]
  before_action :common_info, only: [:destroy]
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
    @cat = Item.includes(:category).find(params[:id])
    @item = Item.includes(:user).find(params[:id])
    @detail = UserDetail.find_by(user_id: @item.user_id)

    @img = ItemImage.find_by(item_id: @item.id)
    @imgs = ItemImage.where(item_id: @item.id)

    item = Item.find(params[:id])
    user_id = item.user_id
    @user_items = Item.where(user_id: user_id)
    @images = ItemImage.where(item_id: @user_items)

    card = Card.find_by(user_id: current_user)

    # if card.blank?
    #   redirect_to controller: 'cards', action: 'new'
    # else
    #   Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    #   customer = Payjp::Customer.retrieve(card.customer_id)
    #   @default_card_information = customer.cards.retrieve(card.card_id)
    # end
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
      if @item.user_id == current_user.id
        @item.destroy
        redirect_to root_path
      end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :state, :shipping_charges, :shipping_method, :shipping_source_area, :days_ship, :price, item_images_attributes: [:image]).merge(user_id: current_user.id)
  end

  def common_info
    @item = Item.find(params[:id])
  end

end

