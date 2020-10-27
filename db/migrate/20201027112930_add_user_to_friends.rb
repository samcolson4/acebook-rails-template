class AddUserToFriends < ActiveRecord::Migration[5.1]
  def change
    add_reference :friends, :requester, foreign_key: { to_table: :users }, null: false
    add_reference :friends, :requestee, foreign_key: { to_table: :users }, null: false
  end
end
