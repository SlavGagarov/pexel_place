class ApplicationController < ActionController::Base
  def index
    @sharks = Shark.all
    @cells = Cell.all
  end
end
