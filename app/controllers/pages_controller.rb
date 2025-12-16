class PagesController < ApplicationController
  def index
    render json: { message: "Miriam would like to wish you a happy Chanukah" }
  end
end
