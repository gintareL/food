class AddKcalKjDensityToFoodstuff < ActiveRecord::Migration[6.0]
  def change
    add_column :foodstuffs, :kcal, :decimal
    add_column :foodstuffs, :kj, :decimal
    add_column :foodstuffs, :density, :decimal
  end
end
