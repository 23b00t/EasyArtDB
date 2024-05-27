class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[show edit update destroy]
  before_action :set_active_storage_base_url, only: %i[index show]
  before_action :set_referer_path, only: %i[show create]

  def index
    @artists = Artist.all.sort_by { |artist| artist.last_name.to_s }
  end

  def show
    item_storage = ItemStorage.all.first
    items_index_url = item_storage.url

    case @referer_path
    when %r{\A/lists} || %r{\A/items/\d+\z}
      @index_url = @referer_path
    when %r{\A/artists}
      @index_url = artists_path
    when %r{\A/\z|\A/items}
      @index_url = items_index_url
    end
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      if @referer_path.match?(%r{/items})
        redirect_to @referer_path
      else
        redirect_to artist_path(@artist)
      end
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

  def set_active_storage_base_url
    ActiveStorage::Current.host = request.base_url
  end

  def set_referer_path
    @referer_path = URI(request.referer).path if request.referer
  end
end
