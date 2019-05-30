class CreateLibros < ActiveRecord::Migration[5.1]
  def change
    create_table :libros do |t|
      t.string :nombre
      t.text :descripcion
      t.float :precio

      t.timestamps
    end
  end
end
