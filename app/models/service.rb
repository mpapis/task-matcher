class Service < ActiveRecord::Base
  belongs_to :machine
  attr_accessible :name, :machine_id
  has_many :tasks
end
