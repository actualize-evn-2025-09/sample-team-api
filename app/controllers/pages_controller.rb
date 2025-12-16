class PagesController < ApplicationController
  def index
    render json: { message: "Hello Class, this is Josh, the best lokking person in the class" }
  end
end
