# -*- coding: utf-8 -*-
class Conditionnement < ActiveRecord::Base
  belongs_to :aliment
  validates_presence_of :aliment_id

  before_create :setup_values # {|conditionnement| conditionnement.quantite = 0   conditionnement.seuil = 0 }


  def setup_values
    self.quantite = 0 #if self.quantite == nil
    self.seuil = 0 #if self.seuil == nil
    self.nom = "Conditionnement générique"
  end

  def plus
    self.quantite = self.quantite + 1
    self.save
  end

  def moins
    self.quantite = self.quantite - 1 if self.quantite > 0
    self.save
  end

  def alerte
    "alerte" if self.seuil >= self.quantite
  end

end
