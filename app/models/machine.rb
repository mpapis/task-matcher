class Machine < ActiveRecord::Base
  attr_accessible :name, :service_men
  has_many :services
end
