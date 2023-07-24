class CommentsController < ActionController::Base
  layout 'tailwind'

  def create
    boardId = params[:id]

    comment = Comment.new

    comment.board_id = boardId
    comment.name = params[:name]
    comment.comment = params[:comment]

    if comment.save
      flash[:notice] = "コメントを投稿しました"
    else
      flash[:error_messages] = comment.errors.full_messages
    end

    redirect_to boardsShow_path(boardId)
  end

  def delete
    comment = Comment.find(params[:id])
    boardId = comment.board_id
    
    comment.delete

    flash[:notice] = "削除しました"
    redirect_to boardsShow_path(boardId)
  end
end