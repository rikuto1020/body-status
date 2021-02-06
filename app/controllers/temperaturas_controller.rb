class TemperaturasController < ApplicationController

  def index
    @data_1 = Temperatura.where(month_id: 1)
    @data_2 = Temperatura.where(month_id: 2)
    @data_3 = Temperatura.where(month_id: 3)
    @data_4 = Temperatura.where(month_id: 4)
    @data_5 = Temperatura.where(month_id: 5)
    @data_6 = Temperatura.where(month_id: 6)
    @data_7 = Temperatura.where(month_id: 7)
    @data_8 = Temperatura.where(month_id: 8)
    @data_9 = Temperatura.where(month_id: 9)
    @data_10 = Temperatura.where(month_id: 10)
    @data_11 = Temperatura.where(month_id: 11)
    @data_12 = Temperatura.where(month_id: 12)
  end


  def one
    @data_1 = Temperatura.where(month_id: 1)
    @data1_select = @data_1.select(:temperature)
    @data1_count = @data1_select.count {|num| num > 37.5}
    # @data_1.count{ |num| num > 37.5}
  end
  
  def two
    @data_2 = Temperatura.where(month_id: 2)
  end

  def three 
    @data_3 = Temperatura.where(month_id: 3)
  end

  def four
    @data_4 = Temperatura.where(month_id: 4)
  end

  def five
    @data_5 = Temperatura.where(month_id: 5)
  end
  
  def six
    @data_6 = Temperatura.where(month_id: 6)
  end

  def seven
    @data_7 = Temperatura.where(month_id: 7)
  end

  def eight
    @data_8 = Temperatura.where(month_id: 8)
  end

  def nine
    @data_9 = Temperatura.where(month_id: 9)
  end

  def ten
    @data_10 = Temperatura.where(month_id: 10)
  end

  def eleven
    @data_11 = Temperatura.where(month_id: 11)
  end

  def twelve
    @data_12 = Temperatura.where(month_id: 12)
  end

  def new
  @temperatura = Temperatura.new
  end

  def create
    @temperatura = Temperatura.new(temperatura_params)
    if @temperatura.save
      @data = Temperatura.all
      @data.last.update(result_date: @data.last.month_id.to_s + '/' + @data.last.day_id.to_s)
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
