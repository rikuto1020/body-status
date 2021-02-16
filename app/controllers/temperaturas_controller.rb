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
    @data_1 = Temperatura.where(month_id: 1).where(user_id: current_user)
    @temperature = @data_1.select(:temperature)
    @result_data = @data_1.select(:result_date)
  end
  
  def two
    @data_2 = Temperatura.where(month_id: 2).where(user_id: current_user)
    @temperature = @data_2.select(:temperature)
    @result_data = @data_2.select(:result_date)
  end

  def three 
    @data_3 = Temperatura.where(month_id: 3).where(user_id: current_user)
    @temperature = @data_3.select(:temperature)
    @result_data = @data_3.select(:result_date)
  end

  def four
    @data_4 = Temperatura.where(month_id: 4).where(user_id: current_user)
    @temperature = @data_4.select(:temperature)
    @result_data = @data_4.select(:result_date)
  end

  def five
    @data_5 = Temperatura.where(month_id: 5).where(user_id: current_user)
    @temperature = @data_5.select(:temperature)
    @result_data = @data_5.select(:result_date)
  end
  
  def six
    @data_6 = Temperatura.where(month_id: 6).where(user_id: current_user)
    @temperature = @data_6.select(:temperature)
    @result_data = @data_6.select(:result_date)
  end

  def seven
    @data_7 = Temperatura.where(month_id: 7).where(user_id: current_user)
    @temperature = @data_7.select(:temperature)
    @result_data = @data_7.select(:result_date)
  end

  def eight
    @data_8 = Temperatura.where(month_id: 8).where(user_id: current_user)
    @temperature = @data_8.select(:temperature)
    @result_data = @data_8.select(:result_date)
  end

  def nine
    @data_9= Temperatura.where(month_id: 9).where(user_id: current_user)
    @temperature = @data_9.select(:temperature)
    @result_data = @data_9.select(:result_date)
  end

  def ten
    @data_10 = Temperatura.where(month_id: 10).where(user_id: current_user)
    @temperature = @data_10.select(:temperature)
    @result_data = @data_10.select(:result_date)
  end

  def eleven
    @data_11 = Temperatura.where(month_id: 11).where(user_id: current_user)
    @temperature = @data_11.select(:temperature)
    @result_data = @data_11.select(:result_date)
  end

  def twelve
    @data_12 = Temperatura.where(month_id: 12).where(user_id: current_user)
    @temperature = @data_12.select(:temperature)
    @result_data = @data_12.select(:result_date)
  end


  def new
  @temperatura = Temperatura.new
  @group = Group.find(params[:group_id])
  end

  def list
    @group = Group.find(params[:group_id])
    @date = Temperatura.created_today
    @data_2 = @date.where(user_id: current_user.id)
    @user = @group.users
    @temperaturas = @date.group(:user_id)
  end

  def create
    
    @temperatura = Temperatura.new(temperatura_params)
    @group = Group.find(params[:group_id])
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
    params.require(:temperatura).permit(:temperature, :day_id, :month_id ).merge(user_id: current_user.id,group_id:  params[:group_id])
  end



end
