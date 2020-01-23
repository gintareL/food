class AddColumnsToFoodstuff < ActiveRecord::Migration[6.0]
  def change
    add_column :foodstuffs, :water, :decimal
    add_column :foodstuffs, :na_cl, :decimal
    add_column :foodstuffs, :portion, :decimal
    add_column :foodstuffs, :fat_ges, :decimal
    add_column :foodstuffs, :fat_gfs, :decimal
    add_column :foodstuffs, :fat_eufs, :decimal
    add_column :foodstuffs, :fat_mufs, :decimal
    add_column :foodstuffs, :fat_chol, :decimal
    add_column :foodstuffs, :carb_ges, :decimal
    add_column :foodstuffs, :carb_mono_di, :decimal
    add_column :foodstuffs, :carb_poly, :decimal
    add_column :foodstuffs, :carb_ball, :decimal
  end
end
