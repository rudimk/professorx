class Billing < ActiveRecord::Base
  has_many :users
  has_many :courses
end
