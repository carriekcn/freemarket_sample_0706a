# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  def facebook
    callback_for(:facebook)
  end

  def google_oauth2
    callback_for(:google)
  end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  def callback_for(provider)
    @user = User.from_auth(request.env["omniauth.auth"])
    if @user.present?
      sign_in_and_redirect @user, event: :authentication
    else
      session["devise.#{provider}_data"] = request.env["omniauth.auth"].except("extra")
      redirect_to new_user_registration_path
    end
  end

  def failure
    redirect_to new_user_session_path and return
  end

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
