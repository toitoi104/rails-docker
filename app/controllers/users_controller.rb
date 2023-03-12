class UsersController < ActionController::Base
  def index
    @users = User.all
  end

  def show
    # routeから変数を受け取る
    params['id']

    # 「@」をつけるとviewに渡される
    @user = User.find(params['id'])
  end
end