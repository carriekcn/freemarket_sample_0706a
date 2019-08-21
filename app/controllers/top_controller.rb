class TopController < ApplicationController
  def index
    items = Item.where(category_id: 1).limit(4)
    @img = ItemImage.includes(:item).group(:item_id).where(item_id: items.ids).order('created_at DESC')

    mens = Item.where(category_id: 2).limit(4)
    @men = ItemImage.includes(:item).group(:item_id).where(item_id: mens.ids).order('created_at DESC')

  end
end
