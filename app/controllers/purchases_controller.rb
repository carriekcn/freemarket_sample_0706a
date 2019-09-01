class PurchasesController < ApplicationController

  before_action :render_layout

  def index
  end

  def show
    item = Item.find(params[:id])
    @item_id = item.id
  end

  def render_layout
    render layout:  "compact"
  end

end
