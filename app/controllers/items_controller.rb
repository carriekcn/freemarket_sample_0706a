class ItemsController < ApplicationController

  require 'payjp'

  before_action :authenticate_user!, only: [:new, :confirmation, :confirmed]
  before_action :common_info, only: [:destroy, :show, :confirmed]
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
    @user_items = Item.where(user_id: @itm.user_id)
    @images = ItemImage.where(item_id: @user_items)
    @item = Item.includes([:category, :user]).find(params[:id])
    @detail = @item.user.user_detail
    @imgs = ItemImage.where(item_id: @item.id)

    card = Card.find_by(user_id: current_user)
    #payjpで必要なので残しておく
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
    @itm.update(status: 'Sold')
    @itm.save
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
      if @itm.user_id == current_user.id
        @itm.destroy
        redirect_to root_path
      end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :state, :shipping_charges, :shipping_method, :shipping_source_area, :days_ship, :price, item_images_attributes: [:image]).merge(user_id: current_user.id)
  end

  def common_info
    @itm = Item.find(params[:id])
  end

end

