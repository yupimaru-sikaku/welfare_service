class FavoritesController < ApplicationController

  def create
    @gh = Gh.find(params[:gh_id])
    favorite = current_user.favorites.new(gh_id: @gh.id)
    favorite.save
  end
  
  def destroy
    @gh = Gh.find(params[:gh_id])
    favorite = current_user.favorites.find_by(gh_id: @gh.id)
    favorite.destroy
  end


end



