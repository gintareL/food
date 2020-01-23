class AddCategoryToFoodstuff < ActiveRecord::Migration[6.0]
  def change
    add_reference :foodstuffs, :category, foreign_key: true
  end
end
