class RestaurantsController < ApplicationController
    def index
        restaurants = Restaurant.all
        render json: restaurants, status: :ok
    end

    def show
            restaurant = Restaurant.find(params[:id])
            render json: restaurant, serializer: RestaurantAndPizzasSerializer, status: 200
    end
end
