class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @po = Power.find(params[:id])
  end
end
