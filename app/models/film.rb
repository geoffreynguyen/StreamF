class Film < ApplicationRecord
  attr_accessor :poster

  has_attached_file :poster, styles: {:big => "400x500", :medium => "273x300>", :thumb => "100x100>"}

  validates_attachment :poster, presence: true,
                       content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                       size: { less_than: 10.megabytes } # you wanna change that
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

