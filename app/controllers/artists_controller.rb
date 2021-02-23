class ArtistsController < ApplicationController
  def index
    @categories = Category.all
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
