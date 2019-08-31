class PurchasesController < ApplicationController
  def index
    render layout:  "compact"
  end

  def show
    render layout:  "compact"
    @item_id = params[:id]
  end

end
