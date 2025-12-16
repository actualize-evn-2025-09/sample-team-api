class ExamplesController < ApplicationController
  def index
    render json: { message: "Hello from the examples controller!!!" }
  end
end
