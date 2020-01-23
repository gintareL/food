class CalculationController < ApplicationController
  def index

  end

  def calculate
    if !(params[:hight].nil? or params[:weight].nil? or params[:age].nil? or params[:gender].nil? or params[:activity].nil?)
      @hight = params[:hight].to_f
      @weight = params[:weight].to_f
      @age = params[:age].to_f
      activity = get_activity(params[:activity].to_i)
      @bmi = (@weight/(@hight*@hight)).round(2)

      if params[:gender] == 'male'
        @ruheenergieverbrauch = ((0.047 * @weight - 0.01452 * @age + 4.219) * 239).round(2)
      else
        @ruheenergieverbrauch = ((0.047 * @weight - 0.01452 * @age + 3.21) * 239).round(2)
      end
      @total_kcal = (@ruheenergieverbrauch * activity).round(2)
    else
      flash[:danger] = "Du DAU, gib Parameterski ein, blyad"
      redirect_to calculation_url
    end
  end

  def show

  end

  def get_activity(activity)
    case activity
    when 2
      1.2
    when 3
      1.3
    when 4
      1.4
    when 5
      1.5
    when 6
      1.6
    when 7
      1.7
    when 8
      1.8
    when 9
      1.9
    when 10
      2
    when 11
      2.4

    end
  end
end