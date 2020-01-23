class ChangeDensityToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :foodstuffs, :density, :float
  end
end
