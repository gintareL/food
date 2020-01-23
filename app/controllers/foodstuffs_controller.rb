class FoodstuffsController < ApplicationController
  def index
    @food = Foodstuff.all
    @filterrific = initialize_filterrific(
        @food,
        params[:filterrific]
    ) or return
    @food = @filterrific.find
  end

  def new
    @food = Foodstuff.new
  end

  def create
    @food = Foodstuff.new(name: params[:foodstuff][:name], category_id: params[:foodstuff][:category],
                          kcal: params[:foodstuff][:kcal], kj: params[:foodstuff][:kj],
                          density: params[:foodstuff][:density], protein: params[:foodstuff][:protein],
                          ret: params[:foodstuff][:ret], caro: params[:foodstuff][:caro], e: params[:foodstuff][:e],
                          b_1: params[:foodstuff][:b_1], b_2: params[:foodstuff][:b_2], b_6: params[:foodstuff][:b_6],
                          b_12: params[:foodstuff][:b_12], fol: params[:foodstuff][:fol], c: params[:foodstuff][:c],
                          na: params[:foodstuff][:na], k: params[:foodstuff][:k], ca: params[:foodstuff][:ca],
                          mg: params[:foodstuff][:mg], p: params[:foodstuff][:p], fe: params[:foodstuff][:fe],
                          zn: params[:foodstuff][:zn], water: params[:foodstuff][:water], na_cl: params[:foodstuff][:na_cl],
                          portion: params[:foodstuff][:portion], fat_ges: params[:foodstuff][:fat_ges],
                          fat_gfs: params[:foodstuff][:fat_gfs], fat_eufs: params[:foodstuff][:fat_eufs],
                          fat_mufs: params[:foodstuff][:fat_mufs], fat_chol: params[:foodstuff][:fat_chol],
                          carb_ges: params[:foodstuff][:carb_ges], carb_mono_di: params[:foodstuff][:carb_mono_di],
                          carb_poly: params[:foodstuff][:carb_poly], carb_ball: params[:foodstuff][:carb_ball])
    if @food.save
      flash[:succsess] = "Nahrungsmittel wurde gespeichert"
      redirect_to foodstuffs_url(@food)
    else
      flash[:danger] = "Nahrungsmittel konnte nicht gespeichert werden."
      redirect_to new_foodstuffs_url
    end
  end

  def show
    @food = Foodstuff.find(params[:format])
  end

  def edit
    @food = Foodstuff.find(params[:format])
  end

  def update
    @food = Foodstuff.find(params[:foodstuff][:id])
    @food.update(name: params[:foodstuff][:name], category_id: params[:foodstuff][:category],
        kcal: params[:foodstuff][:kcal], kj: params[:foodstuff][:kj],
        density: params[:foodstuff][:density], protein: params[:foodstuff][:protein],
        ret: params[:foodstuff][:ret], caro: params[:foodstuff][:caro], e: params[:foodstuff][:e],
        b_1: params[:foodstuff][:b_1], b_2: params[:foodstuff][:b_2], b_6: params[:foodstuff][:b_6],
        b_12: params[:foodstuff][:b_12], fol: params[:foodstuff][:fol], c: params[:foodstuff][:c],
        na: params[:foodstuff][:na], k: params[:foodstuff][:k], ca: params[:foodstuff][:ca],
        mg: params[:foodstuff][:mg], p: params[:foodstuff][:p], fe: params[:foodstuff][:fe],
        zn: params[:foodstuff][:zn], water: params[:foodstuff][:water], na_cl: params[:foodstuff][:na_cl],
        portion: params[:foodstuff][:portion], fat_ges: params[:foodstuff][:fat_ges],
        fat_gfs: params[:foodstuff][:fat_gfs], fat_eufs: params[:foodstuff][:fat_eufs],
        fat_mufs: params[:foodstuff][:fat_mufs], fat_chol: params[:foodstuff][:fat_chol],
        carb_ges: params[:foodstuff][:carb_ges], carb_mono_di: params[:foodstuff][:carb_mono_di],
        carb_poly: params[:foodstuff][:carb_poly], carb_ball: params[:foodstuff][:carb_ball])

    redirect_to foodstuffs_url(@food)
  end
end
