class AddBirthdayToBoardUser < ActiveRecord::Migration[7.0]
  def change
    add_column :board_users, :birthday, :date
  end
end
