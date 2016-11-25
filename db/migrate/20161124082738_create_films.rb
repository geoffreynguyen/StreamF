class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :titre
      t.datetime :date_sortie
      t.datetime :duree
      t.string :synopsis
      t.string :auteur
      t.string :avis
      t.string :video

      t.timestamps
    end
  end
end
