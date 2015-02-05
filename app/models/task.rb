class Task < ActiveRecord::Base
  belongs_to :client
  attr_accessible :name, :time_from, :time_to, :client_id
  has_many :task_details
end
