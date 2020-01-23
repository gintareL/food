class ChangeDecimalToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :foodstuffs, :fat_chol, :float
    change_column :foodstuffs, :fat_ges, :float
    change_column :foodstuffs, :fat_gfs, :float
    change_column :foodstuffs, :fat_eufs, :float
    change_column :foodstuffs, :fat_mufs, :float
    change_column :foodstuffs, :carb_mono_di, :float
    change_column :foodstuffs, :carb_ges, :float
    change_column :foodstuffs, :carb_ball, :float
    change_column :foodstuffs, :carb_poly, :float
    change_column :foodstuffs, :na_cl, :float
    change_column :foodstuffs, :water, :float
    change_column :foodstuffs, :portion, :float
    change_column :foodstuffs, :na, :float
    change_column :foodstuffs, :k, :float
    change_column :foodstuffs, :ca, :float
    change_column :foodstuffs, :mg, :float
    change_column :foodstuffs, :p, :float
    change_column :foodstuffs, :fe, :float
    change_column :foodstuffs, :zn, :float
    change_column :foodstuffs, :ret, :float
    change_column :foodstuffs, :caro, :float
    change_column :foodstuffs, :e, :float
    change_column :foodstuffs, :b_1, :float
    change_column :foodstuffs, :b_2, :float
    change_column :foodstuffs, :b_6, :float
    change_column :foodstuffs, :b_12, :float
    change_column :foodstuffs, :fol, :float
    change_column :foodstuffs, :c, :float
  end
end
