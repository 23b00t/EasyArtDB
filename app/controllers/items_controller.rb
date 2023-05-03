class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update destroy]

  def index
    @items = Item.all
  end

  def show; end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save ? (redirect_to item_path(@item)) : (render :new, status: :unprocessable_entity)
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
      :artist_id, :manufacturer_id, :incomplete, :titel, :size, :material, :made_at, :edition, :provenance, :category
    )
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
