class TemperaturasController < ApplicationController

  def index
    @data = [['2019-06-01', 100], ['2019-06-02', 200], ['2019-06-03', 150]]

  end

  def new
  @temperatura = Temperatura.new
  end

  def create
    @temperatura = Temperatura.new(temperatura_params)
    if @temperatura.save
      redirect_to root_path

    else
      render :new
    end
  end

  private
  def temperatura_params
    params.require(:temperatura).permit(:temperature, :day_id, :month_id ).merge(user_id: current_user.id)
  end


end
