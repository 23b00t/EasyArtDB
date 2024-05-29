class ProvenancesController < ApplicationController
  before_action :set_item
  before_action :set_provenance, only: %i[edit update destroy]

  def create
    @provenance = @item.provenances.build(provenance_params)
    if @provenance.save
      redirect_to @item, notice: 'Provenienz erfolgreich angelegt'
    else
      render :new, alert: 'Es ist etwas schief gelaufen'
    end
  end

  def edit; end

  def update
    if @provenance.update(provenance_params)
      redirect_to @item, notice: 'Provenienz erfolgreich aktualisiert'
    else
      render :edit, alert: 'Es ist etwas schief gelaufen'
    end
  end

  def destroy
    @provenance.destroy
    redirect_to @item, notice: 'Provenienz erfolgreich gelöscht'
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def set_provenance
    @provenance = @item.provenances.find(params[:id])
  end

  def provenance_params
    params.require(:provenance).permit(:text, :source)
  end
end
