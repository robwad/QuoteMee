class ChangeTextToBeTextInQuotes < ActiveRecord::Migration[5.2]
  def up
  	change_column :quotes, :text, :text
  end

  def down
  	change_column :quotes, :text, :string
  end
end
