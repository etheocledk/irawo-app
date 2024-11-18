class PurchasesController < ApplicationController
  def index
    @purchased_resources = PurchasedResource.includes(:resource).all
  end
end
