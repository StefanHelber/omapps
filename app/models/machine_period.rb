class MachinePeriod < ActiveRecord::Base
  attr_accessible :capacity, :machine_id, :overtime, :period_id
end
