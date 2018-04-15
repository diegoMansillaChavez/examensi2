class CreateFathers < ActiveRecord::Migration[5.1]
  def change
    create_table :fathers do |t|
      t.string :nombre
      t.string :apellido
      t.string :celular
      t.integer :tipo

      t.timestamps
    end
  end
end
