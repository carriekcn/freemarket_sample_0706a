class PaymentsController < ApplicationController
  #before_action :authenticate_user!

  def card
    #form表示
  end

  def create
    #model名.create(create_params)
    #recirect_to controller: :mypageのコントローラとアクション
  end

  private
  def create_params
    #params.require(:)
  end

end
