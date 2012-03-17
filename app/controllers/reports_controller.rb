class ReportsController < ApplicationController
  def show
    @products = Product.all
    @raw_materials = RawMaterial.all
    @deliveries = Delivery.where("delivery_date > '#{Time.now}'").order(:delivery_date)
  end
end
