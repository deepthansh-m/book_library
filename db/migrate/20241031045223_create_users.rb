class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.timestamps
    end
    add_column :books, :user_id, :integer, null: false
    add_foreign_key :books, :users, column: :user_id
  end
end
