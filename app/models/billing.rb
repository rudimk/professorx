class Billing < ActiveRecord::Base
  has_many :users
  has_many :courses
  has_one :promotions
end
