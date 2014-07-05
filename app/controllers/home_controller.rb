class HomeController < ApplicationController

  def index
    authorize! :index, @event

    @event = Event.next_deadline.first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event }
    end
  end

  def feed
    authorize! :feed, @users

    @users = User.all
  end

end