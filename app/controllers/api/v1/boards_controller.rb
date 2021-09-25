class Api::V1::BoardsController < ApplicationController
  def index
    @boards = Board.all
    render json: @boards
  end
  def show
    @board = Board.find_by(id: params[:id])
    render json: @board
  end
  def create
    @board = Board.new(board_params)
    @board.save
    # if @board.save
    #   render json: @board, status: :created, location: @board
    # else
    #   render json: @board.errors, status: :unprocessable_entity
    # end
  end
  # def update
  #   @board.update(board_params)
  # end
  # def destroy
  #   @board.destroy
  # end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_target_board
      @board = Board.find_by(id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def board_params
      params.permit(:name, :title, :body)
    end
end
