class MachinePeriod < ActiveRecord::Base
  attr_accessible :capacity, :machine_id, :overtime, :period_id

  belongs_to :machine
  belongs_to :period

#  def machine_name
#    self.machine.name
#  end

#  def period_name
#    self.period.name
#  end
end



