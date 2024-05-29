class ReferencesController < ApplicationController
  before_action :set_item
  before_action :set_reference, only: %i[edit update destroy]

  def create
    @reference = @item.references.build(reference_params)

    if @reference.save
      redirect_to @item, notice: 'Literatur erfolgreich hinzugefügt'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @reference.update(reference_params)
      redirect_to @item, notice: 'Literatur erfolgreich aktualisiert'
    else
      render :edit
    end
  end

  def destroy
    @reference.destroy
    redirect_to @item, notice: 'Literatur erfolgreich gelöscht'
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def set_reference
    @reference = @item.references.find(params[:id])
  end

  def reference_params
    params.require(:reference).permit(:text)
  end
end
