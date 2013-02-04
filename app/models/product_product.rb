class ProductProduct < ActiveRecord::Base
  attr_accessible :coefficient, :from_product_id, :to_product_id
  validates :coefficient, :numericality => { :greater_than => 0}


  belongs_to :from_product, class_name: "Product"
  belongs_to :to_product, class_name: "Product"

  def from_product_name
    self.from_product.name
  end

  def to_product_name
    self.to_product.name
  end

end

