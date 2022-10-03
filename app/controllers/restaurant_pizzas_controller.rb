class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response

    def create
        restaurant = RestaurantPizza.create!(pizza_params)
        render json: restaurant.pizza, status: 201
    end

    private

    def pizza_params
        params.permit(:price, :restaurant_id, :pizza_id)
    end

    def unprocessable_entity_response(invalid)
        render json:{error: invalid.record.errors}, status: 422
    end

end
