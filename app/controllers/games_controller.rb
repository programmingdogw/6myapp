class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    Game.create(game_params)
  end

  def show
    @user = User.find(params[:user_id])
    @game = Game.find(params[:id])
  end

  def destroy
  end

  private
    def game_params
      params.require(:game).permit(:name, :cost)
    end


end
