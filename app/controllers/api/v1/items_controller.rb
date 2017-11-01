module Api
  module V1
    class ItemsController < ApplicationController

      def index
        render json: Item.all
      end

      def show
        render  json: Item.find(params[:id])
      end

      def create
        render json: Item.create(item_params)
      end

      def update
        render json: Item.update(item_params)
      end

      def destroy
        item = Item.find(params[:id])
        render json: item.destroy
      end
    end
  end
end
