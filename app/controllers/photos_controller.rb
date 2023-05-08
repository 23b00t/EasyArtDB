class PhotosController < ApplicationController
  before_action :set_item

  def create
    @item.photos.attach(params[:photo][:image])
    redirect_to item_path(@item), notice: 'Photo was successfully added.'
  end

  def destroy
    @photo = ActiveStorage::Attachment.find(params[:id])
    @photo.purge
    redirect_to item_path(@item), notice: 'Photo was successfully deleted.'
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end
end
