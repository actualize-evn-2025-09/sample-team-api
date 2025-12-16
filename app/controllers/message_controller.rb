class MessageController < ApplicationController
  def index
  render json: {message: "Welcome to the thunderdome. this is your DOOM"}
  end
end
