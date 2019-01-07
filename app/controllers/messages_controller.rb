class MessagesController < ApplicationController
  def index
  end

  def show
    @room = Room.find(params[:id])
    @messages = Message.all
  end

  def new
  end

  def create
  end
end
