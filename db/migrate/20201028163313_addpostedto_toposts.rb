class AddpostedtoToposts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :posted_to, null: false, foreign_key: { to_table: :users }
  end
end
