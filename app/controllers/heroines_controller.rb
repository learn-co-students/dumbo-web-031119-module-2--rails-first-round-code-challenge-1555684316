class HeroinesController < ApplicationController


  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = @heroine.power
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(
      params.require(:heroine).permit(:super_name, :name, :power_id))
      redirect_to heroines_path
  end





end
