class ManufacturersController < ApplicationController
  before_action :set_manufacturer, only: %i[show edit update destroy]

  def index
    @manufacturers = Manufacturer.all
  end

  def show; end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    @manufacturer.save ? (redirect_to manufacturer_path(@manufacturer)) : (render :new, status: :unprocessable_entity)
  end

  def edit; end

  def update
    if @manufacturer.update(manufacturer_params)
      redirect_to manufacturer_path(@manufacturer)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @manufacturer.destroy
    redirect_to manufacturers_path, status: :see_other
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :location)
  end

  def set_manufacturer
    @manufacturer = Manufacturer.find(params[:id])
  end
end
