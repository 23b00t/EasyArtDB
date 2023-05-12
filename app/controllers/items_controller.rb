class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update destroy]
  before_action :set_active_storage_base_url, only: %i[index show]

  def index
    @items = Item.with_attached_photos
                 .joins('INNER JOIN artists AS artist_alias ON artist_alias.id = items.artist_id')
                 .includes(:manufacturer, :comments, :references, :tasks)
                 .order('artist_alias.last_name ASC, made_at ASC NULLS LAST')
                 .paginate(page: params[:page], per_page: 20)
    @items = @items.where(artist_id: params[:artist_id]) if params[:artist_id].present?
    @items = @items.global_search(params[:query]) if params[:query].present?
  end

  def show; end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      @item.photos.attach(params[:item][:photos])
      redirect_to item_path(@item)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path, status: :see_other
  end

  private

  def item_params
    params.require(:item).permit(
      :artist_id, :manufacturer_id, :incomplete, :titel, :size, :material, :made_at,
      :edition, :provenance, :category, tasks_attributes: %i[id description completed],
                                        comments_attributes: %i[id content],
                                        references_attributes: %i[id url],
                                        photos: []
    )
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_active_storage_base_url
    ActiveStorage::Current.host = request.base_url
  end
end
