class IngredientsController < ApplicationController
    #GET /ingredients
    def index
        ingredients = Ingredient.all
        render json: ingredients, except: [:created_at, :updated_at]
    end

    #GET /ingredients/:id
    def show
        ingredient = Ingredient.find_by(id: params[:id])
        if ingredient
            render json: ingredient
        else
            render json: { error: "Ingredient not found" }, status: :not_found
        end
    end

#     #POST /ingredients
#     def create
#         ingredient = Ingredient.create(ingredient_params)
#         render json: ingredient, status: :created
#     end


#     #PATCH /ingredients/:id
#     def update
#         ingredient = Ingredient.Find_by(id: params[:id])
#         if ingredient
#             ingredient.update(ingredient_params)
#             render json: ingredient
#         else
#             render json: { error: "Ingredient not found" }, status: :not_found
#         end
#     end

#     #DELETE /ingredients/:id
#     def destroy
#     ingredient = Ingredient.find_by(id: params[:id])
#         if ingredient
#             ingredient.destroy
#             render json: {}
#         else
#             render json: { error: "Ingredient not found" }, status: :not_found
#         end
#     end

# private

#     def ingredient_params
#       params.permit(:name, :category, :cost, :points)
#     end
end
