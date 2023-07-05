require "application_system_test_case"

class FoodsTest < ApplicationSystemTestCase
  setup do
    @food = foods(:one)
  end

  test "visiting the index" do
    visit foods_url
    assert_selector "h1", text: "Foods"
  end

  test "should create food" do
    visit foods_url
    click_on "New food"

    fill_in "Ash", with: @food.ash
    fill_in "Calcium", with: @food.calcium
    fill_in "Carbohydrates", with: @food.carbohydrates
    fill_in "Cholesterol", with: @food.cholesterol
    fill_in "Copper", with: @food.copper
    fill_in "Dietary fiber", with: @food.dietary_fiber
    fill_in "Iron", with: @food.iron
    fill_in "Kcal", with: @food.kcal
    fill_in "Kj", with: @food.kj
    fill_in "Lipids", with: @food.lipids
    fill_in "Magnesium", with: @food.magnesium
    fill_in "Manganese", with: @food.manganese
    fill_in "Moisture", with: @food.moisture
    fill_in "Name", with: @food.name
    fill_in "Niacin", with: @food.niacin
    fill_in "Phosphorus", with: @food.phosphorus
    fill_in "Potassium", with: @food.potassium
    fill_in "Protein", with: @food.protein
    fill_in "Pyridoxine", with: @food.pyridoxine
    fill_in "Rae", with: @food.rae
    fill_in "Re", with: @food.re
    fill_in "Retinol", with: @food.retinol
    fill_in "Riboflavin", with: @food.riboflavin
    fill_in "Sodium", with: @food.sodium
    fill_in "Thiamin", with: @food.thiamin
    fill_in "Vitamin c", with: @food.vitamin_c
    fill_in "Zinc", with: @food.zinc
    click_on "Create Food"

    assert_text "Food was successfully created"
    click_on "Back"
  end

  test "should update Food" do
    visit food_url(@food)
    click_on "Edit this food", match: :first

    fill_in "Ash", with: @food.ash
    fill_in "Calcium", with: @food.calcium
    fill_in "Carbohydrates", with: @food.carbohydrates
    fill_in "Cholesterol", with: @food.cholesterol
    fill_in "Copper", with: @food.copper
    fill_in "Dietary fiber", with: @food.dietary_fiber
    fill_in "Iron", with: @food.iron
    fill_in "Kcal", with: @food.kcal
    fill_in "Kj", with: @food.kj
    fill_in "Lipids", with: @food.lipids
    fill_in "Magnesium", with: @food.magnesium
    fill_in "Manganese", with: @food.manganese
    fill_in "Moisture", with: @food.moisture
    fill_in "Name", with: @food.name
    fill_in "Niacin", with: @food.niacin
    fill_in "Phosphorus", with: @food.phosphorus
    fill_in "Potassium", with: @food.potassium
    fill_in "Protein", with: @food.protein
    fill_in "Pyridoxine", with: @food.pyridoxine
    fill_in "Rae", with: @food.rae
    fill_in "Re", with: @food.re
    fill_in "Retinol", with: @food.retinol
    fill_in "Riboflavin", with: @food.riboflavin
    fill_in "Sodium", with: @food.sodium
    fill_in "Thiamin", with: @food.thiamin
    fill_in "Vitamin c", with: @food.vitamin_c
    fill_in "Zinc", with: @food.zinc
    click_on "Update Food"

    assert_text "Food was successfully updated"
    click_on "Back"
  end

  test "should destroy Food" do
    visit food_url(@food)
    click_on "Destroy this food", match: :first

    assert_text "Food was successfully destroyed"
  end
end
