class AddNewToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :new, :string
  end
end
