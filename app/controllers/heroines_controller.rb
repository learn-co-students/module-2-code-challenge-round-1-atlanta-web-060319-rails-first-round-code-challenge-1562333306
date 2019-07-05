class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show

  end
end
