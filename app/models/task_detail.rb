class TaskDetail < ActiveRecord::Base
  belongs_to :task
  belongs_to :service
  attr_accessible :name, :people_amount, :time_required, :service_id
end
