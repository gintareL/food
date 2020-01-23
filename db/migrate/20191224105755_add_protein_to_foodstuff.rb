class AddProteinToFoodstuff < ActiveRecord::Migration[6.0]
  def change
    add_column :foodstuffs, :protein, :decimal
  end
end
