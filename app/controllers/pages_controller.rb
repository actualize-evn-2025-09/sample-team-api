class PagesController < ApplicationController
  def index
    render json: { message: "Hello Class, this is Josh, the best looking person in the class" }
  end
end
