class PizzasController < ApplicationController

    def index 
        pizzas = Pizza.all
        render json: @pizzas.as_json(only: [:id, :name, :ingredients])
        # .to_json(except: [:created_at, :updated_at])
    end 
end
