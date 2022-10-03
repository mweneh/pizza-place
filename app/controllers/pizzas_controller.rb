class PizzasController < ApplicationController

    def index
        render json: Pizza.all, status: 200
        
    end
end
