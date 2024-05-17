class BookmarksController < ApplicationController
  before_action :set_list, :set_items, :init_error_handling

  def create
    @item_ids.each do |item|
      next if Bookmark.find_by(item_id: item, list_id: @list.id)

      @bookmark = Bookmark.new(item_id: item, list_id: @list.id)

      if @bookmark.save
        @success_responses << { success: true, bookmark_id: @bookmark.id }
      else
        @error_responses << { success: false, errors: @bookmark.errors.full_messages }
      end
    end

    error_handling(@error_responses, @success_responses)
  end

  def destroy
    @item_ids.each do |item|
      @bookmark = Bookmark.where(item_id: item, list_id: @list.id)

      if @bookmark.destroy(@bookmark.ids)
        @success_responses << { success: true, bookmark_id: @bookmark.ids }
      else
        @error_responses << { success: false, errors: @bookmark.errors.full_messages }
      end
    end

    error_handling(@error_responses, @success_responses)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:list_id, :item_ids)
  end

  def error_handling(error_responses, success_responses)
    if error_responses.empty?
      render json: { success: true, bookmarks: success_responses }
    else
      render json: { success: false, errors: error_responses.flatten }, status: :unprocessable_entity
    end
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_items
    @item_ids = params[:item_ids].map(&:to_i)
  end

  def init_error_handling
    @success_responses = []
    @error_responses = []
  end
end
