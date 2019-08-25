class TopController < ApplicationController
  def index

    wmen = Item.where(category_id: 1).limit(4)
    @wmen = ItemImage.includes(:item).group(:item_id).where(item_id: wmen.ids).order('created_at DESC')

    mens = Item.where(category_id: 2).limit(4)
    @men = ItemImage.includes(:item).group(:item_id).where(item_id: mens.ids).order('created_at DESC')

    kid = Item.where(category_id: 3).limit(4)
    @kids = ItemImage.includes(:item).group(:item_id).where(item_id: kid.ids).order('created_at DESC')

    chan = Item.where(category_id: 14).limit(4)
    @chans = ItemImage.includes(:item).group(:item_id).where(item_id: chan.ids).order('created_at DESC')

    louv = Item.where(category_id: 15).limit(4)
    @louvs = ItemImage.includes(:item).group(:item_id).where(item_id: louv.ids).order('created_at DESC')

    nike = Item.where(category_id: 16).limit(4)
    @nikes = ItemImage.includes(:item).group(:item_id).where(item_id: nike.ids).order('created_at DESC')

  end
end
