class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :purchase]


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

    def show
      @resource = Resource.find(params[:id])
    end

    def purchase
      purchased_resource = PurchasedResource.new(
        resource: @resource,
        price_paid: @resource.price,
        purchased_at: Time.current
      )
  
      if purchased_resource.save
        redirect_to resources_path, notice: "Votre achat a été effectué avec succès !"
      else
        redirect_to resources_path, alert: "Une erreur est survenue lors de l'achat."
      end
    end
  
    private
  
    def set_resource
      @resource = Resource.find(params[:id])
    end
end
