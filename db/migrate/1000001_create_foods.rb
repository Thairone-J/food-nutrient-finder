class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.float :moisture
      t.float :kcal
      t.float :kj
      t.float :protein
      t.float :lipids
      t.float :cholesterol
      t.float :carbohydrates
      t.float :dietary_fiber
      t.float :ash
      t.float :calcium
      t.float :magnesium
      t.float :manganese
      t.float :phosphorus
      t.float :iron
      t.float :sodium
      t.float :potassium
      t.float :copper
      t.float :zinc
      t.float :retinol
      t.float :re
      t.float :rae
      t.float :thiamin
      t.float :riboflavin
      t.float :pyridoxine
      t.float :niacin
      t.float :vitamin_c
      t.string :image_url

      t.timestamps
    end
  end
end
