class ProfileController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  layout "tab", only: [:index]
  def index
  end
end
