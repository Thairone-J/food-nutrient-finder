require "test_helper"

class FoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food = foods(:one)
  end

  test "should get index" do
    get foods_url
    assert_response :success
  end

  test "should get new" do
    get new_food_url
    assert_response :success
  end

  test "should create food" do
    assert_difference("Food.count") do
      post foods_url, params: { food: { ash: @food.ash, calcium: @food.calcium, carbohydrates: @food.carbohydrates, cholesterol: @food.cholesterol, copper: @food.copper, dietary_fiber: @food.dietary_fiber, iron: @food.iron, kcal: @food.kcal, kj: @food.kj, lipids: @food.lipids, magnesium: @food.magnesium, manganese: @food.manganese, moisture: @food.moisture, name: @food.name, niacin: @food.niacin, phosphorus: @food.phosphorus, potassium: @food.potassium, protein: @food.protein, pyridoxine: @food.pyridoxine, rae: @food.rae, re: @food.re, retinol: @food.retinol, riboflavin: @food.riboflavin, sodium: @food.sodium, thiamin: @food.thiamin, vitamin_c: @food.vitamin_c, zinc: @food.zinc } }
    end

    assert_redirected_to food_url(Food.last)
  end

  test "should show food" do
    get food_url(@food)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_url(@food)
    assert_response :success
  end

  test "should update food" do
    patch food_url(@food), params: { food: { ash: @food.ash, calcium: @food.calcium, carbohydrates: @food.carbohydrates, cholesterol: @food.cholesterol, copper: @food.copper, dietary_fiber: @food.dietary_fiber, iron: @food.iron, kcal: @food.kcal, kj: @food.kj, lipids: @food.lipids, magnesium: @food.magnesium, manganese: @food.manganese, moisture: @food.moisture, name: @food.name, niacin: @food.niacin, phosphorus: @food.phosphorus, potassium: @food.potassium, protein: @food.protein, pyridoxine: @food.pyridoxine, rae: @food.rae, re: @food.re, retinol: @food.retinol, riboflavin: @food.riboflavin, sodium: @food.sodium, thiamin: @food.thiamin, vitamin_c: @food.vitamin_c, zinc: @food.zinc } }
    assert_redirected_to food_url(@food)
  end

  test "should destroy food" do
    assert_difference("Food.count", -1) do
      delete food_url(@food)
    end

    assert_redirected_to foods_url
  end
end
