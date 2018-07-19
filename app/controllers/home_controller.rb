class HomeController < ApplicationController
  before_action :check_signed_in, only: [:login, :signup]
  
  def index
  end
end
