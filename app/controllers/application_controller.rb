class ApplicationController < ActionController::Base
  def index
  end

  def create_cells
    x = 0
    while x<5
      y = 0
      while y<5
        c = Cell.new
        c.x = x
        c.y = y
        c.color = "#FFFFFF"
        c.save!
        y = y + 1
      end
      x = x + 1
    end
  end
end
