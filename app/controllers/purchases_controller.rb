class PurchasesController < ApplicationController
  def index
    render layout:  "compact"
  end

  def update

  end

  private
  def purchase_params
    params.require(:item).permit()
  end
end
