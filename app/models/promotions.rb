class Promotions < ActiveRecord::Base
  belongs_to :course
  belongs_to :billing
end
