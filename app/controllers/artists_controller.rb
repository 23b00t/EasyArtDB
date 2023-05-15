class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[show edit update destroy]

  def index
    @artists = Artist.all.sort_by { |artist| artist.last_name.to_s }
  end

  def show; end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to request.referer.match?(%r{/items/new$}) ? new_item_path : artist_path(@artist)
    else
      render :new, status: :unprocessable_entity
    end
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
