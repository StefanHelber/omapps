class Product < ActiveRecord::Base
  attr_accessible :holding_cost, :initial_inventory, :lead_time_periods, :name, :processing_time, :setup_cost, :setup_time

  has_many :product_periods, :dependent => :destroy

end
