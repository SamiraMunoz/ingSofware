class WelcomeController < ApplicationController
  def dashboard
    @users = User.order(ecoins: :desc).limit(5)
  end
end
