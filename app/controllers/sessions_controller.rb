class SessionsController < ApplicationController
  def create
    board_user = BoardUser.find_by(name: params[:name])

    if board_user && board_user.authenticate(params[:password])
      session[:user_id] = board_user.id
      redirect_to mypage_path
    else
      render 'home/index'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
