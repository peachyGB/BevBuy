class DrinksController < ApplicationController
    #GET /drinks
    def index
        drinks = Drink.all
        render json: drinks, except: [:created_at, :updated_at]
    end

    #GET /drinks/:id
    def show
        drink = Drink.find_by(id: params[:id])
        if drink
            render json: drink
        else
            render json: { error: "Drink not found" }, status: :not_found
        end
    end

#     #POST /drinks
#     def create
#         drink = Drink.create(drink_params)
#         render json: drink, status: :created
#     end


#     #PATCH /drinks/:id
#     def update
#         drink = Drink.Find_by(id: params[:id])
#         if drink
#             drink.update(drink_params)
#             render json: drink
#         else
#             render json: { error: "Drink not found" }, status: :not_found
#         end
#     end

#     #DELETE /drinks/:id
#     def destroy
#     drink = Drink.find_by(id: params[:id])
#         if drink
#             drink.destroy
#             render json: {}
#         else
#             render json: { error: "Drink not found" }, status: :not_found
#         end
#     end

# private

#     def drink_params
#       params.permit(:size, :favorite, :user_id)
#     end
end
