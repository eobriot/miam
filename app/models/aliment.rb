class Aliment < ActiveRecord::Base
  has_many :conditionnements, :dependent => :destroy

  validates_presence_of :nom
  
end
