class HeroinesController < ApplicationController
  def index
  	# if params.key?("q")
  	# 	@heroines = Power.find_by(name: params[:q]).heroines
  	# else	
   #  	@heroines = Heroine.all
   #  end
   	@heroines = Heroine.all
  end

  def show
  	@heroine = Heroine.find(params[:id])
  end

  def new
  	@heroine = Heroine.new
  end

  def create
  	@heroine = Heroine.new(safe_params)

  	if @heroine.save
  		redirect_to heroine_path(@heroine)
  	else
  		redirect_to new_heroine_path
  	end
  end

  private
  def safe_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
