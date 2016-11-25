
class FinderCategorie
  t = Categorie.find_by libelle:'action'
  Film.find_by categorie:t
  Film.where categorie:t
end