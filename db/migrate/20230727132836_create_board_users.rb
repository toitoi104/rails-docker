class CreateBoardUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :board_users do |t|
      t.string :name, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
    add_index :users, :name, unique: true
  end
end
