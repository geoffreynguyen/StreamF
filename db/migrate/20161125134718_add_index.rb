class AddIndex < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :categorie_id, :integer
    add_index :films, ['categorie_id'], :name => "index_categorie_id"
  end
end
