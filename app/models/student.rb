class Student < ApplicationRecord
	include ImageUploader[:image]
  belongs_to :user
  has_many :tutorins
end
