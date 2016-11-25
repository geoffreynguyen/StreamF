class Film < ApplicationRecord
  belongs_to :categorie
  # has_many :categorie

  def self.search search

    if search
      categorieFind = Categorie.find search[:categorie_id]
      categorieAll = Categorie.find_by libelle:'All'
      if categorieFind != categorieAll
        @lastRead = categorieFind.libelle
        return where categorie:categorieFind
      end
    end
    return all
  end


end
