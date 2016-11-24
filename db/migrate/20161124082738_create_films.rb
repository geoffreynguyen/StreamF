class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :titre
      t.datetime :date_sortie
      t.string :synopsis

      t.timestamps
    end
  end
end
