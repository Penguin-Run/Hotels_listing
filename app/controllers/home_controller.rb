class HomeController < ApplicationController
  def index
    @hotels_list = Hotel.all
    end
end
