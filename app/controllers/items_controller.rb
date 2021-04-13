class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: ItemSerializer.new(items, {include: [:category]})
    end

    def show 
        item = Item.find(params[:id])
        render json: ItemSerializer.new(item)
    end 

    def create
        item = Item.new(item_params)
        if item.save
            render json: ItemSerializer.new(item)
        else 
            render json: {error: "oops"}
        end 

    end 

    def destroy 
        item = Item.find(params[:id])
        item.destroy 
        render json: {message: "successfully deleted #{item.name}"}
    end 

    def update 
        item = Item.find(params[:id])
        if item.update(item_params)
            render json: ItemSerializer.new(item)
        else 
            render json: {error: "could not save"}
        end
    end 

    private 

    def item_params
        params.require(:item).permit(:price, :description, :name, :category_id)
    end

end
