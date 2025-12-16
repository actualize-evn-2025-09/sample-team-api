class PagesController < ApplicationController
  def index
    render json: { message: "Hello Class" }
  end
end
