class AddStockToLibro < ActiveRecord::Migration[5.1]
  def change
    add_column :libros, :stock, :integer
  end
end
