class Appointment < ActiveRecord::Base
  belongs_to :user
  #accepts_nested_attributes_for :user_id
end
