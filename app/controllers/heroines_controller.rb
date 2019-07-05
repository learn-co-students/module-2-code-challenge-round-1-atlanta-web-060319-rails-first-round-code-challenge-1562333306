class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    if params[:search]
      @heroines.each {|her| @power = her.power.name = Power.search(params[:search]).order("created_at DESC")}
      render :search
    else
      @heroines.each {|hers| hers.power.name = Power.all.order('created_at DESC') }
    end
  end

  def show
    @her = Heroine.find(params[:id])
  end

  def new
    @her = Heroine.new
  end

  def create
    @her = Heroine.new(heroine_params)
    if @her.save
      redirect_to heroine_path(@her)
    else
      render :new
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
