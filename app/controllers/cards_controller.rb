class CardsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new]
  layout "tab", only: [:index, :new]
  def index
  end

  def new
  end

  def create
  end
end
