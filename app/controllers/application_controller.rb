class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  
  def index
    @sharks = Shark.all
    @cells = Cell.all.order(:y, :x)
  end

  def show
    logger.fatal "TERMINATING APP"
    logger.fatal params
    logger.fatal "TERMINATING APP"
    c = Cell.first
    c.color = params[:my_id]
    #c.color = "#000000"
    c.save!
    redirect_to :root
  end

  def update_color
    logger.info "UPDATE COLOR"
    c = Cell.first
    c.color = params[:my_id]
    c.save!
  end
end
