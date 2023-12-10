class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update destroy]
  before_action :set_active_storage_base_url, only: %i[index show]

  def index
    @items = Item.with_attached_photos
                 .joins('INNER JOIN artists AS artist_alias ON artist_alias.id = items.artist_id')
                 .includes(:manufacturer, :comments, :references, :tasks)
                 .order('artist_alias.last_name ASC, made_at ASC NULLS LAST')

    @items = @items.where(artist_id: params[:artist_id]) if params[:artist_id].present?
    @items = @items.open_tasks(params[:open_tasks]) if params[:open_tasks] == "false"
    @items = @items.incomplete_data(params[:incomplete]) if params[:incomplete] == 'true'
    @items = @items.global_search(params[:query]) if params[:query].present?

    session[:item_ids] = @items.map(&:id)

    # Paginate without changing the order
    @items = Kaminari.paginate_array(@items).page(params[:page]).per(20) unless params[:show_all]

    respond_to do |format|
      format.html
      format.text { render partial: "items/table", locals: { items: @items }, formats: [:html] }
    end
  end

  def show
    @item_ids = session[:item_ids]
    # Find the index of the current item in the array
    current_index = @item_ids.index(@item.id)

    # Determine the previous and next item IDs
    previous_item_id = @item_ids[current_index - 1] if current_index > 0
    next_item_id = @item_ids[current_index + 1] if current_index < @item_ids.length - 1

    # Pass these values to the view
    @previous_item_id = previous_item_id
    @next_item_id = next_item_id
  end

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
      if params[:item][:photos].present?
        params[:item][:photos].each do |photo|
          @item.photos.attach(photo)
        end
      end

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
                                        references_attributes: %i[id url]
    )
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_active_storage_base_url
    ActiveStorage::Current.host = request.base_url
  end
end
