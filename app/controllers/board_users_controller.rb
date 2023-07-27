class BoardUsersController < ApplicationController
  layout 'tailwind'

  def new
    @board_user = BoardUser.new(flash[:board_user])
  end

  def create
    board_user = BoardUser.new(user_params)

    if board_user.save
      session[:user_id] = board_user.id
      redirect_to mypage_path
    else
      flash[:board_user] = board_user
      flash[:error_messages] = board_user.errors.full_messages
      redirect_to board_users_new_path
    end
  end

  def me
  end

  private

  def user_params
    params.permit(:name, :password, :password_confirmation)
  end
end
