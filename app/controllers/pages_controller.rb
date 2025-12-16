class PagesController < ApplicationController
  def index

    render json: { message: "Hello Class, this is Josh, the best looking person in the class. Miriam would like to wish you a happy Chanukah" }

  end
end
