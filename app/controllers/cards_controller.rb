class CardsController < ApplicationController

  # require 'payjp'

  before_action :authenticate_user!, only: [:index, :new]
  # before_action :card_info, only: [:delete, :show]
  layout "tab", only: [:index, :new]

  def index
  end

  def new
  end

  def pay
    # Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    # if params['payjp-token'].blank?
    #   redirect_to action: "new"
    # else
    #   customer = Payjp::Customer.create(
    #   card: params['payjp-token'],
    #   metadata: {user_id: current_user.id}
    #   )
    #   @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
    #   if @card.save
    #     redirect_to action: "show"
    #   else
    #     redirect_to action: "pay"
    #   end
    # end
  end

  def delete
    # if card.blank?
    #   redirect_to action: "new"
    # else 
    #   Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    #   customer = Payjp::Customer.retrieve(card.customer_id)
    #   customer.delete
    #   card.delete
    # end
  end

  def show 
    # if card.blank?
    #   redirect_to action: "new"
    # else
    #   Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    #   customer = Payjp::Customer.retrieve(card.customer_id)
    #   @default_card_information = customer.cards.retrieve(card.card_id)
    # end
  end


  # def card_info
  #   card = Card.find_by(user_id: current_user)
  # end

end
