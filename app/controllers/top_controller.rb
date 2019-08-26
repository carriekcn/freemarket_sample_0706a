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
    cat_id = Item.where(category_id: category_id).limit(4)
    ItemImage.includes(:item).group(:item_id).where(item_id: cat_id.ids).order('created_at DESC')
  end

end
