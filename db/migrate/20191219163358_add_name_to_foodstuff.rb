class AddNameToFoodstuff < ActiveRecord::Migration[6.0]
  def change
    add_column :foodstuffs, :name, :string
  end
end
