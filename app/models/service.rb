class Service < ActiveRecord::Base
  belongs_to :machine
  attr_accessible :name
end
