class PicsController < ApplicationController
  def index
    @pics = Pic.all

    render json: { message: "I can do great things!" }
  end
end

