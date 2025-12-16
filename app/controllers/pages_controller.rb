class PagesController < ApplicationController
  def index

    render json: { message: "Welcome to the thunderdome, this is youre DOOM" }

  end
end
