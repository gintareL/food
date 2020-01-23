class AddVitaminsToFoodstuff < ActiveRecord::Migration[6.0]
  def change
    add_column :foodstuffs, :ret, :decimal
    add_column :foodstuffs, :caro, :decimal
    add_column :foodstuffs, :e, :decimal
    add_column :foodstuffs, :b_1, :decimal
    add_column :foodstuffs, :b_2, :decimal
    add_column :foodstuffs, :b_6, :decimal
    add_column :foodstuffs, :b_12, :decimal
    add_column :foodstuffs, :fol, :decimal
    add_column :foodstuffs, :c, :decimal
  end
end
