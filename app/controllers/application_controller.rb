class ApplicationController < ActionController::Base
  $current_x = -1
  $current_y = -1

  def intialize
    logger.info "INITIALIZE"
    logger.info "INITIALIZE"
     @cells = Cell.all.order(:y, :x)
  end

  def index
    if @cells.nil?
      logger.info "GETTING ALL CELLS"
      @cells = Cell.all.order(:y, :x)
    end
  end

  def update_color
    c = Cell.where(x: $current_x, y:$current_y).first
    c.color = params[:my_id]
    c.save!
  end

  def set_selected_cell
    $current_x = params[:selected_x]
    $current_y = params[:selected_y]
  end

  def delete_cells
    Cell.where("x > ?", 20).destroy_all
    Cell.where("y > ?", 20).destroy_all
  end

  def make_cells
    for i in 21..40
      for j in 1..25
        c = Cell.new
        c.x = i
        c.y = j
        c.color = "#FFFFFF"
        c.save!
      end
    end

    for i in 1..20
      for j in 21..25
        c = Cell.new
        c.x = i
        c.y = j
        c.color = "#FFFFFF"
        c.save!
      end
    end

  end
end
