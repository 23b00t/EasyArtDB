require "pry-byebug"

class BookmarksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item_ids = params[:item_ids].map(&:to_i)
    # binding.pry

    success_responses = []
    error_responses = []

    @item_ids.each do |item|
      @bookmark = Bookmark.new(item_id: item, list_id: @list.id)

      if @bookmark.save
        success_responses << { success: true, bookmark_id: @bookmark.id }
      else
        error_responses << { success: false, errors: @bookmark.errors.full_messages }
      end
    end

    if error_responses.empty?
      render json: { success: true, bookmarks: success_responses }
    else
      render json: { success: false, errors: error_responses.flatten }, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list_id), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:list_id, :item_ids)
  end
end
