class AddSlugToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :slug, :string
  end
end
