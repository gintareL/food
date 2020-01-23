class AddMineralsToFoodstuff < ActiveRecord::Migration[6.0]
  def change
    add_column :foodstuffs, :na, :decimal
    add_column :foodstuffs, :k, :decimal
    add_column :foodstuffs, :ca, :decimal
    add_column :foodstuffs, :mg, :decimal
    add_column :foodstuffs, :p, :decimal
    add_column :foodstuffs, :fe, :decimal
    add_column :foodstuffs, :zn, :decimal
  end
end
