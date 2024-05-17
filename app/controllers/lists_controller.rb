class ListsController < ApplicationController
  before_action :set_list, only: %i[show destroy]

  def index
    @lists = List.all
  end

  def show
    @list_items = ItemsFilterService.new(@list.items, params).filter_and_sort

    item_storage = ItemStorage.first_or_create
    item_storage.update(item_ids: @list_items.map(&:id), url: request.original_url)

    @list_items = Kaminari.paginate_array(@list_items).page(params[:page]).per(20) unless params[:show_all]

    respond_to do |format|
      format.html
      format.text { render "shared/_pagination_table", formats: [:html], locals: { items: @list_items } }
    end
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save ? (redirect_to list_path(@list)) : (render :new, status: :unprocessable_entity)
  end

  def destroy
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
