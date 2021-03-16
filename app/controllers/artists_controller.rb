class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :find_artist, only: [ :show, :edit, :update, :destroy ]

  def index
    @categories = Category.all
    @artists = Artist.all.order(:nome)
    authorize @artists
  end

  def show
    authorize @artist
  end

  def new
    @artist = Artist.new
    authorize @artist
  end

  def create
    @artist = Artist.new(artist_params)
    authorize @artist
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render :new, alert: "Eita, deu ruim. Tente de novo."
    end
  end

  def edit
    authorize @artist
  end

  def update
    authorize @artist
    if @artist.update(artist_params)
      redirect_to artist_path(@artist)
    else
      render :new, alert: "Eita, deu ruim. Tente de novo."
    end
  end

  def destroy
    authorize @artist
    @artist.destroy
    redirect_to artists_path
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:nome, :cidade, :social, :pdf, :h1, :h2, :h3, :p1, :p2, :p3, :f1, :f2, :f3, :f4, :f1_legenda, :f2_legenda, :f3_legenda, :f4_legenda, :category_id)
  end
end
