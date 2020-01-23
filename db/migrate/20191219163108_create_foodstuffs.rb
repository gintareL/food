class CreateFoodstuffs < ActiveRecord::Migration[6.0]
  def change
    create_table :foodstuffs do |t|

      t.timestamps
    end
  end
end
