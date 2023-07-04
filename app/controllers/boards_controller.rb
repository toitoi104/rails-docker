class BoardsController < ActionController::Base
  layout 'tailwind'

  before_action :set_target_board, only: %i[show edit update delete]

  def index
    @boards = Board.page(params[:page]).per(10)
  end

  def new
    @board = Board.new
  end

  def create
    Board.create(board_params)

    redirect_to action: :index
  end

  def show
  end

  def edit
  end

  def update
    @board.update(board_params)

    redirect_to action: :index
  end

  def delete
    @board.destroy

    redirect_to action: :index
  end

  private

  def board_params
    params.require(:board).permit(:name, :title, :body)
  end

  def set_target_board
    @board = Board.find(params[:id])
  end
end