class Teacher < ApplicationRecord
	include ImageUploader[:image]
  belongs_to :user
  belongs_to :type

  validates :phone, :name, presence: true

  enum status: [:active, :inactive]

  def set_default_status
  	self.inactive!
  end
end
