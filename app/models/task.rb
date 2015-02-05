class Task < ActiveRecord::Base
  belongs_to :client
  belongs_to :service
  attr_accessible :name, :time_from, :time_to
end