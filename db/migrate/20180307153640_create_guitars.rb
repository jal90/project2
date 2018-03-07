class CreateGuitars < ActiveRecord::Migration[5.1]
  def change
    create_table :guitars do |t|
      t.string :make
      t.string :model
      t.string :string_brand
      t.decimal :string_guage
      t.date :last_string_change
      t.date :last_setup
      t.string :setup_notes

      t.timestamps
    end
  end
end
