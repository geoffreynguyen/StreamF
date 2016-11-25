class Utilisateur < ApplicationRecord

  #Check if the user exist in login
  def self.existInData nom,mot_de_passe
    t = Utilisateur.find_by(pseudo:nom,password:mot_de_passe)
    if t
      return true
    end
    return false
  end
end
