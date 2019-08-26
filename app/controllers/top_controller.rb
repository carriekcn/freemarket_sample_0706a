class TopController < ApplicationController
  def index
    @wmen = searchItemImage(1)
    @men = searchItemImage(2)
    @kids = searchItemImage(3)
    @chans = searchItemImage(14)
    @louvs = searchItemImage(15)
    @nikes = searchItemImage(16)
  end

  def searchItemImage (category)
    catg = Item.where(category_id: category).limit(4)
    ItemImage.includes(:item).group(:item_id).where(item_id: catg.ids).order('created_at DESC')
  end

end
