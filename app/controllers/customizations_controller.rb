class CustomizationsController < ApplicationController

    #GET /customizations
    def index
        customizations = Customization.all
        render json: customizations, except: [:created_at, :updated_at]
    end

    #GET /customizations/:id
    def show
        customization = Customization.find_by(id: params[:id])
        if customization
            render json: customization
        else
            render json: { error: "Customization not found" }, status: :not_found
        end
    end

    #POST /customizations
    def create
        customization = Customization.create(customization_params)
        render json: customization, status: :created
    end


    #PATCH /customizations/:id
    def update
        customization = Customization.find_by(id: params[:id])
        if customization
            customization.update(customization_params)
            render json: customization
        else
            render json: { error: "Customization not found" }, status: :not_found
        end
    end

    #DELETE /customizations/:id
    def destroy
    customization = Customization.find_by(id: params[:id])
        if customization
            customization.destroy
            render json: {}
        else
            render json: { error: "Customization not found" }, status: :not_found
        end
    end

private

    def customization_params
      params.permit(:drink_id, :ingredient_id)
    end

end
