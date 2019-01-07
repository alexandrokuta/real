class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.create(create_params)
    redirect_to :root, notice:"ルーム:#{@room.name}を作成しました"
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end

  private
  def create_params
    params.require(:room).permit(:name)
  end
end
