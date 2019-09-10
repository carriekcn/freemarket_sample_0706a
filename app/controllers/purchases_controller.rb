class PurchasesController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :render_layout

  def index
  end

  def render_layout
    render layout:  "compact"
  end

end
