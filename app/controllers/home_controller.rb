class HomeController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def countries
    countries = User.distinct.pluck(:country)
    render json: countries
  end
end
