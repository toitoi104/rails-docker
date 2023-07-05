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
    board = Board.create(board_params)
    flash[:notice] = "#{board.title}の掲示板を作成しました"

    redirect_to boardsShow_path(board.id)
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
    flash[:notice] = "#{@board.title}の掲示板が削除されました"

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