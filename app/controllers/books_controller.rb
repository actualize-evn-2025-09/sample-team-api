class BooksController < ApplicationController

  def index
    render json: { message: "Books are amazing" }
  end
  
end
