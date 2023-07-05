class FoodsController < ApplicationController
  before_action :set_food, only: %i[ show edit update destroy ]


  # GET /foods or /foods.json
  def index
    @foods = Food.all
    
  end

  # GET /foods/1 or /foods/1.json
  def show
  end

  # GET /foods/new
  def new
    @food = Food.new
  end

  # GET /foods/1/edit
  def edit
  end

  # POST /foods or /foods.json
  def create
    @food = Food.new(food_params)

    respond_to do |format|
      if @food.save
        format.html { redirect_to food_url(@food), notice: "Food was successfully created." }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1 or /foods/1.json
  def update

  
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to food_url(@food), notice: "Food was successfully updated." }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1 or /foods/1.json
  def destroy
    @food.destroy

    respond_to do |format|
      format.html { redirect_to foods_url, notice: "Food was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  def add_to_favorites
    @food = Food.find(params[:id])
    current_user.foods << @food unless current_user.foods.include?(@food)
  
    redirect_to @food
    flash[:notice] = t('favorite_save')
  end
  

  def favorites 
    if current_user
      @foods = current_user.foods
    else 
      flash[:alert] = "Você precisa estar conectado para acessar os seus alimentos favoritos."

      redirect_to new_user_session_path # or wherever your sign in page is
    end
  end
  

# No seu controlador
def remove_favorite
  # Encontre o alimento e a associação com o usuário atual
  food = Food.find(params[:id])
  current_user.foods.delete(food)

  # Redirecione de volta para a página de favoritos com uma mensagem
  redirect_to favorites_path, notice: t('removed_favorites')
end








  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_params
      params.require(:food).permit(:name, :moisture, :kcal, :kj, :protein, :lipids, :cholesterol, :carbohydrates, :dietary_fiber, :ash, :calcium, :magnesium, :manganese, :phosphorus, :iron, :sodium, :potassium, :copper, :zinc, :retinol, :re, :rae, :thiamin, :riboflavin, :pyridoxine, :niacin, :vitamin_c, :image_url)
    end
end

