class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :author_name
      t.string :birthplace
      t.integer :year_of_birth
      t.text :description

      t.timestamps
    end
  end
end
