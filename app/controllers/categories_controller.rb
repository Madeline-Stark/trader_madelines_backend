class CategoriesController < ApplicationController
    def index 
        categories = Category.all 
        render json: CategorySerializer.new(categories, include: [:items])
    end 
end
