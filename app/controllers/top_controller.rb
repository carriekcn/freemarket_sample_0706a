class TopController < ApplicationController
  def index
    @wmen = searchItemImage(1)
    @men = searchItemImage(2)
    @kids = searchItemImage(3)
    @chans = searchItemImage(14)
    @louvs = searchItemImage(15)
    @nikes = searchItemImage(16)
  end

  def searchItemImage (category_id)
    items = Item.where(category_id: category_id)
    ItemImage.includes(:item).group(:item_id).where(item_id: items.ids).order('created_at DESC').limit(4)
  end

end
