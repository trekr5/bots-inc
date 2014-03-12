class Delivery < ActiveRecord::Base
  belongs_to :purchase
  belongs_to :robot
end
