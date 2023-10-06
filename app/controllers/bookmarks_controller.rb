require "pry-byebug"

class BookmarksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    # @bookmark = Bookmark.new(bookmark_params)
    # @bookmark.list_id = @list.id
    @item_ids = params[:item_ids].map(&:to_i)
    # binding.pry

    @item_ids.each do |item|
      @bookmark = Bookmark.new(item_id: item, list_id: @list.id)

      if @bookmark.save
        render json: { success: true, bookmark_id: @bookmark.id }
      else
        render json: { success: false, errors: @bookmark.errors.full_messages }, status: :unprocessable_entity
      end
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
