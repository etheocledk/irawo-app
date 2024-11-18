class ResourcesController < ApplicationController
    def index
      @resources = Resource.all
      @categories = Category.all
    end

    def show
      @resource = Resource.find(params[:id])
    end
end
