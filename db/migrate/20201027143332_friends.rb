class Friends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.string :status, default: "pending"
      t.timestamps
      t.references :requester, foreign_key: { to_table: :users }, null: false
      t.references :requestee, foreign_key: { to_table: :users }, null: false
    end
  end
end
