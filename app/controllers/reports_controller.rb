class ReportsController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    critical_inventory = TeamGutom::Application.config.critical_inventory
    @products = Product.where("stock_qty < #{critical_inventory}").order(:stock_qty)
    @raw_materials = RawMaterial.where("stock_qty < #{critical_inventory}").order(:stock_qty)
    @deliveries = Delivery.where("delivery_date > '#{Time.now}'").order(:delivery_date)
  end
end
