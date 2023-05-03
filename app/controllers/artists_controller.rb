class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[show edit update destroy]

  def index
    @artists = Artist.all
  end

  def show; end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save ? (redirect_to artist_path(@artist)) : (render :new, status: :unprocessable_entity)
  end

  def edit; end

  def update
    if @artist.update(artist_params)
      redirect_to artist_path(@artist)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_path, status: :see_other
  end

  private

  def artist_params
    params.require(:artist).permit(:first_name, :last_name, :birthday, :deathday, :category)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
