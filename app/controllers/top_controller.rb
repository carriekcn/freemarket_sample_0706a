class TopController < ApplicationController
  def index
    @item = Item.new
    @item_images = @item.item_images.build
  end
end
