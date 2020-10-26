class AddUserTocomments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :user, foreign_key { to_table: :users}
  end
end
