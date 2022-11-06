#app/controllers/cocktails_controller.rb
class CocktailsController < ApplicationController
 def index

    @q= Cocktail.ransack(params[:q])
    @cocktails = @q.result
  


 end
end


  