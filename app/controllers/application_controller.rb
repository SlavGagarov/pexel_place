class ApplicationController < ActionController::Base
  def index
    @sharks = Shark.all
    @cells = Cell.all.order(:y, :x)
  end
end
