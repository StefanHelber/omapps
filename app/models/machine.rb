class Machine < ActiveRecord::Base
  attr_accessible :name, :overtime_cost

  has_many :machine_periods, :dependent => :destroy

end
