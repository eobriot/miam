class HomeController < ApplicationController
  skip_before_filter :require_login , :only => [:index]
  def index
    @conditionnements = Conditionnement.where('quantite <= seuil')
    @messages = Message.order('updated_at DESC').limit(5)
    @new_message = Message.new
  end

end
