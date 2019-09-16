class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new]
  layout "tab", only: [:show, :new]

  def new
  end

  def show
  end
end
