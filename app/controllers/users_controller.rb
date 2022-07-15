class UsersController < ApplicationController
        #GET /users
    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at] 
    end

    #GET /users/:id
    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            render json: { error: "User not found" }, status: :not_found
        end
    end

    # GET /users/:id/drinks
    def userbev
        user = User.find_by(id: params[:id])
        if user
            render json: user.drinks
        else
            render json: { error: "User or Drinks not found" }, status: :not_found
        end
    end

#     #POST /users
#     def create
#         user = User.create(user_params)
#         render json: user, status: :created
#     end


#     #PATCH /users/:id
#     def update
#         user = User.Find_by(id: params[:id])
#         if user
#             user.update(user_params)
#             render json: user
#         else
#             render json: { error: "User not found" }, status: :not_found
#         end
#     end

#     #DELETE /users/:id
#     def destroy
#     user = User.find_by(id: params[:id])
#         if user
#             user.destroy
#             render json: {}
#         else
#             render json: { error: "User not found" }, status: :not_found
#         end
#     end

# private

#     def user_params
#       params.permit(:username)
#     end
end
