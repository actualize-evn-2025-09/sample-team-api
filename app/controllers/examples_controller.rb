class ExamplesController < ApplicationController
  def index
    render json: { message: "Go Bears" }
  end
end
