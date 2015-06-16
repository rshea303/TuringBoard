class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
    @backlog_tickets = @board.tickets.where(status: "backlog")
    @current_sprint_tickets = @board.tickets.where(status: "current sprint")
    @in_progress_tickets = @board.tickets.where(status: "in progress")
    @done_tickets = @board.tickets.where(status: "done")
  end

  def new
    @board = Board.new
  end

  def create
    board = Board.new(board_params)
    if board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  private

  def board_params
    params.require(:board).permit(:title)
  end
end
