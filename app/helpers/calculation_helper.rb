module CalculationHelper
  def check_bmi(bmi)
    if bmi < 18.5 or bmi > 30
      "red"
    elsif bmi >= 18.5 and bmi <= 24.9
      "green"
    else
      "yellow"
    end
  end
end