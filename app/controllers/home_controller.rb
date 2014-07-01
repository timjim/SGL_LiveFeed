class HomeController < ApplicationController

  def index
    @event = Event.future.up_to(1.month.from_now).first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event }
    end
  end

end