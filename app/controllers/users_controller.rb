class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  layout "tab", only: [:show]

  def show
  end
end
