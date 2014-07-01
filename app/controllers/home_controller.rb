class HomeController < ApplicationController

  def index
    @event = Event.where(:when  )

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event }
    end
  end

end