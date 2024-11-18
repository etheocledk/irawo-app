class ResourcesController < ApplicationController

    def show
      @resource = Resource.find(params[:id])
    end

    def index
      @categories = Category.all 

      if params[:search].present? || params[:category].present? || params[:price].present?
        @resources = Resource.where("name LIKE ?", "%#{params[:search]}%")

        if params[:category].present?
          @resources = @resources.where(category_id: Category.find_by(name: params[:category])&.id)
        end

        if params[:price].present?
          case params[:price]
          when "low"
            @resources = @resources.where("price < ?", 20)
          when "mid"
            @resources = @resources.where("price BETWEEN ? AND ?", 20, 100)
          when "high"
            @resources = @resources.where("price > ?", 100)
          end
        end

        @resources = @resources.page(params[:page]).per(10) 
      else
        @resources = Resource.all.page(params[:page]).per(10)
      end
    end
end
