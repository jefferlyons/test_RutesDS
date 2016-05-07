class StudentDriver < ActiveRecord::Base
  belongs_to :student
  belongs_to :driver
end
